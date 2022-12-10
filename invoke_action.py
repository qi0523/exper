import os
import time
import sys

interval = sys.argv[1]

file = open("./benchmark/" + interval + "-hours/invoke_actions.sh", "r")

start = time.time() * 1000000

while True:
    line = file.readline()
    if not line:
        break
    if "EOF\n" == line:
        end = time.time() * 1000000
        time.sleep((1000000 - end + start) / 1000000)
        start = time.time() * 1000000
        continue
    # cmd line
    os.system(line.replace("\n", ""))