# requirements

wget https://dot.net/v1/dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh --version 3.1


dotnet new classlib -n Apache.OpenWhisk.Example.Dotnet -lang "C#"
cd Apache.OpenWhisk.Example.Dotnet
dotnet add package Newtonsoft.Json -v 12.0.1

using System;
using Newtonsoft.Json.Linq;

namespace Apache.OpenWhisk.Example.Dotnet
{
    public class Hello
    {
        public JObject Main(JObject args)
        {
            int name = 0;
            if (args.ContainsKey("time")) {
                name = Convert.ToInt32(args["time"].ToString());
            }

            if (name != 0) {
                Thread.Sleep(name);
            } else {
                Random random = new Random();
                int randomNumber = random.Next(100); // 生成0到99的随机数

                int sleepDuration;
                if (randomNumber < 20) // 20%的概率
                {
                    sleepDuration = random.Next(1, 101); // 1ms到100ms的随机数
                }
                else if (randomNumber < 80) // 60%的概率
                {
                    sleepDuration = random.Next(100, 1001); // 100ms到1s的随机数
                }
                else // 20%的概率
                {
                    sleepDuration = random.Next(1000, 3001); // 1s到2s的随机数
                }

                Thread.Sleep(sleepDuration); // 睡眠指定的毫秒数
            }

            JObject message = new JObject();
            message.Add("greeting", new JValue($"Hello, {name}!"));
            
            return (message); 
        }
    }
}

dotnet publish -c Release -o out
cd out
zip -r -0 helloDotNet.zip *

wsk action update helloDotNet helloDotNet.zip --main Apache.OpenWhisk.Example.Dotnet::Apache.OpenWhisk.Example.Dotnet.Hello::Main --kind dotnet:3.1