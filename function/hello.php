<?php
function main(array $args) : array
{
    $name = (int)($args["time"] ?? 0);

    if ($name) {
        usleep($name * 1000);
    } else {
        $random = rand(0, 99); // 生成0到99的随机数

        if ($random < 20) { // 20%的概率
            $sleepDuration = rand(1, 100) * 1000; // 1ms到100ms的随机数（转换为微秒）
        } elseif ($random < 80) { // 60%的概率
            $sleepDuration = rand(100, 1000) * 1000; // 100ms到1s的随机数（转换为微秒）
        } else { // 20%的概率
            $sleepDuration = rand(1000, 3000) * 1000; // 1s到3s的随机数（转换为微秒）
        }

        usleep($sleepDuration); // 睡眠指定的微秒数
    }
    return ["greeting" => $name];
}