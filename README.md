# Go-Postgres-SQLC

## Migrate

```
$ migrate -help <!-- Document https://github.com/golang-migrate/migrate/tree/master/cmd/migrate -->

$ migrate create -ext sql -dir db/migration -seq init_schema
```

## Postgres

```
$ make postgres
```
