wsk -i action create 6a084cf70d89160151bfe9722cb4c124 ./function/helloDotNet.zip --kind dotnet:3.1 --memory 3072 -l 0 --main Apache.OpenWhisk.Example.Dotnet::Apache.OpenWhisk.Example.Dotnet.Hello::Main
wsk -i action create 7a084cf70d89160151bfe9722cb4c124 ./function/hello.js --kind nodejs:14 --memory 3072 -l 0
wsk -i action create 8a084cf70d89160151bfe9722cb4c124 ./function/hello.py --kind python:2 --memory 3072 -l 0
