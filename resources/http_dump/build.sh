GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o http_dump_linux http_dump.go
go build -ldflags "-s -w" -o http_dump_drawin http_dump.go
