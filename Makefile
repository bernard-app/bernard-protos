.PHONY: generate

generate:
	# Создаем папку, если её нет
	mkdir -p pkg/task_v1

	# Запускаем кодогенерацию
	protoc --proto_path=api/task_v1 \
	--proto_path=. \
	--go_out=pkg/task_v1 --go_opt=paths=source_relative \
	--go-grpc_out=pkg/task_v1 --go-grpc_opt=paths=source_relative \
	task.proto