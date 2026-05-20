.PHONY: generate

generate-task:
	mkdir -p pkg/task_v1

	protoc --proto_path=proto/task_v1 \
	--go_out=./pkg/task_v1 --go_opt=paths=source_relative \
	--go-grpc_out=./pkg/task_v1 --go-grpc_opt=paths=source_relative \
	task.proto

generate-users:
	mkdir -p pkg/users_v1

	protoc --proto_path=proto/users_v1 \
	--go_out=./pkg/users_v1 --go_opt=paths=source_relative \
	--go-grpc_out=./pkg/users_v1 --go-grpc_opt=paths=source_relative \
	users.proto

generate-users-internal:
	mkdir -p pkg/users_internal_v1 \

	protoc --proto_path=proto/users_internal_v1 \
	--go_out=./pkg/users_internal_v1 --go_opt=paths=source_relative \
	--go-grpc_out=./pkg/users_internal_v1 --go-grpc_opt=paths=source_relative \
	users.internal.proto

generate-auth:
	mkdir -p pkg/auth_v1 \
	
	protoc --proto_path=proto/auth_v1 \
	--go_out=./pkg/auth_v1 --go_opt=paths=source_relative \
	--go-grpc_out=./pkg/auth_v1 --go-grpc_opt=paths=source_relative \
	auth.proto