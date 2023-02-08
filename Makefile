.PHONY: go_gen
go_gen:
	protoc --go_out=. --go-grpc_out=. granger_contracts/file_contract/v1/file.proto
.PHONY: python_gen
python_gen:
	python -m grpc_tools.protoc -I./granger_contracts/disease_contract/v1 granger_contracts/disease_contract/v1/disease.proto --python_out=granger_services/disease_service/v1/ --grpc_python_out=granger_services/disease_service/v1/