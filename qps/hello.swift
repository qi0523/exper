func main(args: Any) -> Any {
    let dict = args as! [String:Any]
    Thread.sleep(1.5)
    return [ "greeting" : "Hello stranger!" ]
}