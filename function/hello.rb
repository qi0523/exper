def main(args)
    name = args["name"] || "stranger"
    greeting = "Hello #{name}!"
    puts greeting

    random = rand(0..99) # 生成0到99的随机数
    if random < 20 # 20%的概率
      sleep_duration = rand(1..100) / 1000.0 # 1ms到100ms的随机数（转换为秒）
    elsif random < 80 # 60%的概率
      sleep_duration = rand(100..1000) / 1000.0 # 100ms到1s的随机数（转换为秒）
    else # 20%的概率
      sleep_duration = rand(1000..2000) / 1000.0 # 1s到2s的随机数（转换为秒）
    end
    sleep(sleep_duration) # 睡眠指定的秒数
    { "greeting" => greeting }
  end