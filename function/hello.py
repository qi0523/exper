import time
import random

def main(args):
    name = args.get("name", "stranger")
    greeting = "Hello " + name + "!"
    probability = random.random()
    if probability <= 0.2:
        sleep_time = random.uniform(0.001, 0.1)  # 1ms到100ms
    elif probability <= 0.8:
        sleep_time = random.uniform(0.1, 1)  # 100ms到1s
    else:
        sleep_time = random.uniform(1, 2)  # 1s到2s

    time.sleep(sleep_time)
    return {"greeting": greeting}