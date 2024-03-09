using Newtonsoft.Json.Linq;
using System;
using System.Diagnostics;
using Telegram.Bot;
using System.IO;
using System.Net.Http;
using System.Text;
using System.Threading;
using Telegram.Bot;
using Telegram.Bot.Polling;
using Telegram.Bot.Types.Enums;
using static System.Net.Mime.MediaTypeNames;
using Telegram.Bot.Types;
using File = System.IO.File;

namespace CangCotBot
{
    class Program
    {
        public static readonly string BotToken = Configuration.botToken;
        public static readonly string BaseUrl = Configuration.baseUrl;

        static void Main(string[] args)
        {
            var botClient = new TelegramBotClient(BotToken);
            var receiverOptions = new ReceiverOptions
            {
                AllowedUpdates = new UpdateType[]
                {
                    UpdateType.Message,
                    UpdateType.EditedMessage,
                }
            };
            botClient.StartReceiving(updateHandler, ErrorHandler, receiverOptions);
            Console.ReadLine();
        }

        private static async Task ErrorHandler(ITelegramBotClient client, Exception exception, CancellationToken token)
        {
            throw new NotImplementedException();
        }

        // https://www.youtube.com/watch?v=7oOoL8sBLj0
        private static async Task updateHandler(ITelegramBotClient bot, Telegram.Bot.Types.Update update, CancellationToken token)
        {
            try
            {
                if (update.Message.Type == MessageType.Text)
                {
                    var text = update.Message.Text;
                    var chatId = update.Message.Chat.Id;
                    string username = update.Message.Chat.Username;
                    string from = update.Message.From.Username;
                    var messId = update.Message.MessageId;
                    // Multi-Thread
                    Task tasks = Task.Run(() =>
                    {
                        string response = "Chat cang cot gi vay?";
                        if (text.StartsWith("/start"))
                            response = "                                 _\r\n  ___ __ _ _ __   __ _  ___ ___ | |_\r\n / __/ _` | '_ \\ / _`  / __/ _ \\| __|\r\n| (_| (_| | | | | (_| | (_| (_) | |_\r\n \\___\\__,_|_| |_|\\__,  \\___\\___/ \\__|\r\n                 |___/";
                        else if (text.StartsWith("/hi"))
                            response = " _   _      _ _\r\n| | | | ___| | | ___\r\n| |_| |/ _ | | |/ _ \\\r\n|  _  |  __| | | (_) |\r\n|_| |_|\\___|_|_|\\___/";
                        else if (text.StartsWith("/bye"))
                            response = " ____             ____\r\n| __ ) _   _  ___| __ ) _   _  ___\r\n|  _ \\| | | |/ _ |  _ \\| | | |/ _ \\\r\n| |_) | |_| |  __| |_) | |_| |  __/\r\n|____/ \\__, |\\___|____/ \\__, |\\___|\r\n       |___/            |___/";
                        else if (text.StartsWith("/exec"))
                        {
                            string cmd = text.Substring(6);
                            response = Controls.ExecuteCommand(cmd);
                        }
                        SendResponse(bot, chatId, text, response, messId);
                    });
                }
            } catch (Exception ex) { }
            
        }
        private static async Task SendResponse(ITelegramBotClient bot, long chatId, string text, string response, int messId)
        {
            if (response.Length <= 4096)
            {

                response = $"`{text}` \r\n```\r\n{response}\r\n```";
                bot.SendTextMessageAsync(chatId, response, parseMode:ParseMode.Markdown, replyToMessageId:messId);
            }
            else
            {
                response = $"`{text}`";
                string tempFilePath = Path.GetTempFileName();
                File.WriteAllText(tempFilePath, response);

                using (FileStream fileStream = new FileStream(tempFilePath, FileMode.Open))
                {
                    await bot.SendDocumentAsync(chatId, InputFile.FromStream(fileStream), null, null, response, ParseMode.Markdown);
                }

                File.Delete(tempFilePath);
            }
        }

        

    }
}
