# Golang Ping-Pong service By Docker
> A simple Go server/microservice example


## How to
```
# Smoke test the application
ubuntu in go-ping-pong at 3BPlus on  main via 🐹 v1.16.6 on 🐳 v20.10.8
➜ go run main.go

   ____    __
  / __/___/ /  ___
 / _// __/ _ \/ _ \
/___/\__/_//_/\___/ v4.5.0
High performance, minimalist Go web framework
https://echo.labstack.com
____________________________________O/_______
                                    O\
⇨ http server started on [::]:8080

# In a new terminal, run curl
ubuntu in ~ at 3BPlus
➜ curl http://localhost:8080/
Hello, World!%
ubuntu in ~ at 3BPlus
➜ curl http://localhost:8080/ping
{"Status":"OK","Data":"pong"}
```
