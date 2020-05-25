queueing-dev-compose = docker-compose -f "./docker-compose/queueing/docker-compose.yml"
tsri-dev-compose = docker-compose -f "./docker-compose/tsri/docker-compose.yml"

queueing-production-compose = docker-compose -f "./docker-compose/queueing/docker-compose.prod.yml"
tsri-production-compose = docker-compose -f "./docker-compose/tsri/docker-compose.prod.yml"

# System

dev-restart:
	$(queueing-dev-compose) down -v
	$(tsri-dev-compose) down -v
	$(queueing-dev-compose) up -d
	$(tsri-dev-compose) up -d

dev-status:
	$(queueing-dev-compose) ps
	$(tsri-dev-compose) ps

dev-build:
	$(queueing-dev-compose) build --no-cache
	$(tsri-dev-compose) build --no-cache

dev-system:
	$(queueing-dev-compose) up -d
	$(tsri-dev-compose) up -d

dev-down:
	$(queueing-dev-compose) down -v
	$(tsri-dev-compose) down -v

production-restart:
	$(queueing-production-compose) down -v
	$(tsri-production-compose) down -v
	$(queueing-production-compose) up -d
	$(tsri-production-compose) up -d

production-status:
	$(queueing-production-compose) ps
	$(tsri-production-compose) ps

production-build:
	$(queueing-production-compose) build --no-cache
	$(tsri-production-compose) build --no-cache

production-system:
	$(queueing-production-compose) up -d
	$(tsri-production-compose) up -d

production-down:
	$(queueing-production-compose) down -v
	$(tsri-production-compose) down -v

# Migration

dev-queueing-migrate:
	$(queueing-dev-compose) exec express node_modules/.bin/sequelize-cli db:migrate 

dev-tsri-migrate:
	$(tsri-dev-compose) exec django python manage.py makemigrations
	$(tsri-dev-compose) exec django python manage.py migrate

production-queueing-migrate:
	$(queueing-production-compose) exec express node_modules/.bin/sequelize-cli db:migrate 

production-tsri-migrate:
	$(tsri-production-compose) exec django python manage.py makemigrations
	$(tsri-production-compose) exec django python manage.py migrate

# Django Related command

dev-tsri-init-data:
	$(tsri-dev-compose) exec db psql -d trfai -U trfaidb -f /init/import-master-data.sql

dev-tsri-createsuperuser:
	$(tsri-dev-compose) exec django python manage.py createsuperuser

production-tsri-init-data:
	$(tsri-production-compose) exec db psql -d trfai -U trfaidb -f /init/import-master-data.sql

production-tsri-createsuperuser:
	$(tsri-production-compose) exec django python manage.py createsuperuser