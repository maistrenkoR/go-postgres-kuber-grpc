postgres:
	docker run --name postgresDB -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret  -d postgres

createdb:
	docker exec -it postgresDB createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgresDB dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose down

sqlc:
	docker run --rm -v ${pwd}:/src -w /src kjconroy/sqlc generate

test:
	go test -v -cover ./...

server:
	go run main.go

.PHONY: postgres createdb dropdb migrateup migratedown sqlc test server
