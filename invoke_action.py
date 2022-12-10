import os
import time
import sys

interval = sys.argv[1]

file = open("./benchmark/" + interval + "-hours/invoke_actions.sh", "r")

lines = file.readlines()

for i in range(len(lines)):
    if lines[i][-1] == '\n':
        lines[i] = lines[i][:-1]

start = time.time() * 1000000

for line in lines:
    if "EOF" == line:
        interval = (1000000 - time.time() * 1000000 + start)
        if interval > 0 :
            time.sleep(interval / 1000000)
        start = time.time() * 1000000
        continue
    else:
        os.system(line)