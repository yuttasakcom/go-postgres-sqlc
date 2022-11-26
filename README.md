# Go-Postgres-SQLC

## Migrate

[Document](https://github.com/golang-migrate/migrate/tree/master/cmd/migrate)

```
$ migrate -help
$ migrate create -ext sql -dir db/migration -seq init_schema
```

## Postgres

```
$ make postgres
$ make createdb
$ migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose up
```
