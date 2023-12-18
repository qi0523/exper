import os
import sys

curr = int(sys.argv[1])

root_path = "/home/cloudlab-openwhisk"

rs_dir = "res"

# 指定目录路径
directory_path = os.path.join(root_path, rs_dir)

# 获取目录下的所有文件（包括子目录中的文件）
files = [os.path.join(root, file) for root, dirs, files in os.walk(directory_path) for file in files]

# 打印所有文件
# print(files)

action_count = 0

for file_name in files:
    if "scheduler" in file_name:
        with open(file_name, 'r') as file:
            line_count = sum(1 for line in file)
            action_count = line_count / curr

success = 0

for file_name in files:
    if "invoker" in file_name:
        with open(file_name, 'r') as file:
            line_count = sum(1 for line in file)
            if line_count == action_count + 1:
                success += 1

if success == curr:
    print("OK")
else:
    print("Error")