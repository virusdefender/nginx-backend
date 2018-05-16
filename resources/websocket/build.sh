GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o echo_server_linux echo_server.go
go build -ldflags "-s -w" -o echo_server_drawin echo_server.go
