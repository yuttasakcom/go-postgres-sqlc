postgres:
	docker-compose up -d
createdb:
	docker-compose exec -it db createdb --username=root --owner=root simple_bank

dropdb:
	docker-compose exec -it db dropdb simple_bank

checkdb:
	docker-compose exec -it db psql -U root simple_bank

.PHONY: postgres createdb dropdb