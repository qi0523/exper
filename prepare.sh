wsk -i action create 1a084cf70d89160151bfe9722cb4c124 ./function/hello.py --kind python:3 --memory 3072 -l 0
wsk -i action create 2a084cf70d89160151bfe9722cb4c124 ./function/hello.php --kind php:7.4 --memory 3072 -l 0
wsk -i action create 3a084cf70d89160151bfe9722cb4c124 ./function/hello.js --kind nodejs:10 --memory 3072 -l 0
wsk -i action create 4a084cf70d89160151bfe9722cb4c124 ./function/hello.js --kind nodejs:12 --memory 3072 -l 0
wsk -i action create 5a084cf70d89160151bfe9722cb4c124 ./function/hello.js --kind nodejs:14 --memory 3072 -l 0
wsk -i action create 6a084cf70d89160151bfe9722cb4c124 ./function/hello.js --kind nodejs:16 --memory 3072 -l 0
wsk -i action create 7a084cf70d89160151bfe9722cb4c124 ./function/helloDotNet.zip --kind dotnet:3.1 --memory 3072 -l 0 --main Apache.OpenWhisk.Example.Dotnet::Apache.OpenWhisk.Example.Dotnet.Hello::Main
wsk -i action create 8a084cf70d89160151bfe9722cb4c124 ./function/hello.py --kind python:2 --memory 3072 -l 0
wsk -i action create 9a084cf70d89160151bfe9722cb4c124 ./function/hello.jar --kind java:8 --memory 3072 -l 0 --main Hello
wsk -i action create aa084cf70d89160151bfe9722cb4c124 ./function/hello.swift --kind swift:4.2 --memory 3072 -l 0
wsk -i action create ba084cf70d89160151bfe9722cb4c124 ./function/hello.go --kind golang:1.15 --memory 3072 -l 0
wsk -i action create ca084cf70d89160151bfe9722cb4c124 ./function/hello.rb --kind ruby:2.5 --memory 3072 -l 0
