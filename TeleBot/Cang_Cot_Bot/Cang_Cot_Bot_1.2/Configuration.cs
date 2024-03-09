using System;
namespace CangCotBot
{
    public class Configuration
    {
        public static string botToken = "6525507053:AAHBZ6khXBZGCQEnOaDRhK8-4UOqA7WKm1U";
        public static string baseUrl = $"https://api.telegram.org/bot{botToken}/";
        public Configuration()
        {
        }
        public void updateToken(string token)
        {
            botToken = token;
            baseUrl = $"https://api.telegram.org/bot{botToken}/";
        }
    }

}
