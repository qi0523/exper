package main

import "log"
import "time"
import "math/rand"

// Main is the function implementing the action
func Main(obj map[string]interface{}) map[string]interface{} {
  // do your work
  name, ok := obj["name"].(string)
  if !ok {
    name = "world"
  }
  msg := make(map[string]interface{})
  msg["message"] = "Hello, " + name + "!"
  // log in stdout or in stderr
  log.Printf("name=%s\n", name)

  r := rand.Intn(100)

  if r < 20 {
    time.Sleep(time.Duration(rand.Intn(100)) * time.Millisecond)
  } else if r < 80 {
		time.Sleep(time.Duration(rand.Intn(900)+100) * time.Millisecond)
  } else {
    time.Sleep(time.Duration(rand.Intn(1000)+1000) * time.Millisecond)
  }
  // encode the result back in json
  return msg
}