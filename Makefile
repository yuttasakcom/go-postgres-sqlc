postgresup:
	docker-compose up -d
postgresdown:
	docker-compose up -d

createdb:
	docker-compose exec -it db createdb --username=root --owner=root simple_bank

dropdb:
	docker-compose exec -it db dropdb simple_bank

checkdb:
	docker-compose exec -it db psql -U root simple_bank

migrateup:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate

test:
	go test -v -cover ./...

.PHONY: postgresup createdb dropdb