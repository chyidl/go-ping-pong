# Golang Ping-Pong service By Docker
> A simple Go server/microservice example


## How to
```
# Smoke test the application
ubuntu in go-ping-pong at 3BPlus on  main via 🐹 v1.16.6 on 🐳 v20.10.8
➜ docker run -p 127.0.0.1:8080:8080/tcp chyiyaqing/go-ping-pong:v0.0.1

   ____    __
  / __/___/ /  ___
 / _// __/ _ \/ _ \
/___/\__/_//_/\___/ v4.5.0
High performance, minimalist Go web framework
https://echo.labstack.com
____________________________________O/_______
                                    O\
⇨ http server started on [::]:8080
{"time":"2021-09-02T01:31:49.916312165Z","id":"","remote_ip":"172.17.0.1","host":"localhost:8080","method":"GET","uri":"/ping","user_agent":"curl/7.68.0","status":200,"error":"","latency":2362864,"latency_human":"2.362864ms","bytes_in":0,"bytes_out":30}

# In a new terminal, run curl
ubuntu in ~ at 3BPlus
➜ curl http://localhost:8080/
Hello, World!%
ubuntu in ~ at 3BPlus
➜ curl http://localhost:8080/ping
{"Status":"OK","Data":"pong"}
```
