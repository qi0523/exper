import sys
import os

interval = sys.argv[1]

cmd = "bash ./benchmark/" + interval + "-hours/create_actions_min.sh"

os.system(cmd)