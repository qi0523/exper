import os
import time
import sys

d = {"py": "8a084cf70d89160151bfe9722cb4c124",
     "php": "431387eb7262e1cfc79b125eb8a67c60",
     "sw": "1e0029fc138365a4302ff0f179639e9a"}

qps = sys.argv[1]

extension = sys.argv[2]

#init
os.system("wsk -i action invoke " + d[extension])

time.sleep(150)

for i in range(300):
    st = time.time()
    for i in range(int(qps)):
        os.system("wsk -i action invoke " + d[extension])
    time.sleep(1 + st - time.time())