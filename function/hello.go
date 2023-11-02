package main

import "time"
import "math/rand"

// Main is the function implementing the action
func Main(obj map[string]interface{}) map[string]interface{} {
  // do your work
  name, ok := obj["time"].(int)
  if !ok {
    r := rand.Intn(100)
    if r < 20 {
      name = rand.Intn(100)
    } else if r < 80 {
      name = rand.Intn(900)+100
    } else {
      name = rand.Intn(2000)+1000
    }
  }
  time.Sleep(time.Duration(name) * time.Millisecond)
  
  msg := make(map[string]interface{})
  // encode the result back in json
  return msg
}