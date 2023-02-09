import time

def main(args):
    start = time.time()
    name = args.get("name", "stranger")
    greeting = "Hello " + name + "!"
    time.sleep(1.8 + start - time.time())
    return {"greeting": greeting}