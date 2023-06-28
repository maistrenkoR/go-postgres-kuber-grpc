# go-postgres-kuber-grpc

libraries: 
- https://github.com/golang-migrate/migrate
- https://github.com/kyleconroy/sqlc

- docker commands
- docker images
- docker ps       - return all running containers
- docker ps -a    - return all containers
- docker logs <container_name_or_id>
- docker start <container_name_or_id>
- docker stop <container_name_or_id>

1. Create DB diagram in https://dbdiagram.io and export PostgreSQL
![Alt text](./docs/db_diagram.png "DB diagram")
2. Install Docker
3. Download postgres image 
- docker pull postgres
4. Create docker container
- docker run --name postgresDB -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres
5. connect to container 
- docker exec -it <container_name_or_id> <command> [args]
- docker exec -it 983243be632a psql -U root
6. download https://tableplus.com/
7. import sql queries from step 1 and execute 
8. install migrate library
- scoop install migrate
9. create first migration files 
- migrate create -ext sql -dir .\db\migration\ -seq init_schema
10. create makefile
11. first migration 
- migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose up
12. install sqlc
- go install github.com/kyleconroy/sqlc/cmd/sqlc@latest
13. 