<?php
function main(array $args) : array
{
    $start_time = microtime(true);
    $name = $args["name"] ?? "stranger";
    $greeting = "Hello $name!";
    echo $greeting;
    usleep((1.7 + $start_time - microtime(true)) * 1000000);
    return ["greeting" => $greeting];
}