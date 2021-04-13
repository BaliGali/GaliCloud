@echo off
echo Compiling go
echo ----------------
protoc --go_out=plugins=grpc:../Server/protos gali.proto
echo ----------------
echo done

echo Compiling dart
echo ----------------
protoc --dart_out=grpc:../app/lib/grpc/protos  --proto_path=. -I . gali.proto
echo ----------------
echo done