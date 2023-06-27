# go-postgres-kuber-grpc

docker commands
docker images
docker ps - return all running containers
docker logs <container_name_or_id>

1. Create DB diagram in https://dbdiagram.io and export PostgreSQL
![Alt text](./docs/db_diagram.png "DB diagram")
2. Install Docker
3. docker pull postgres (in terminal)
4. create docker container
docker run --name postgresDB -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres
5. connect to container 
docker exec -it <container_name_or_id> <command> [args]
docker exec -it 983243be632a psql -U root
6. download https://tableplus.com/
7. import sql queries from step 1 and execute 