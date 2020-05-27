# Setup with Docker Compose
This directory contains [Makefile](Makefile) which you can use to fast-forward many setup steps.
> It is a good idea to run these commands in-order to avoid some unexpected behaviors.
## Env file (.env*)
.env are files with some key-values to use in the system via **docker-compose**. 
Some of them are critical, credential, and consider secret. 
So **don't push them to any git repositories**. 
In this repo we provide dev environment files which works out-of-box, 
and the explanation on how to edit them.

**Development env files are**
   - queueing/.env.dev
   - queueing/.env.dev.db
   - queueing/.env.dev.rabbitmq
   - queueing/.env.dev.worker
   - tsri/.env.dev
   - tsri/.env.dev.db

**Production env files are**
   - queueing/.env.prod
   - queueing/.env.prod.db
   - queueing/.env.prod.rabbitmq
   - queueing/.env.prod.worker
   - tsri/.env.prod
   - tsri/.env.prod.db

### Queueing
There are 3 env files
- main [.env.dev](queueing/.env.dev)
    - `NODE_ENV`: Application State
        - ex. `development` or blank means this express is running in development mode.
        - this value is used to determine which database config to use from [database config file](queueing/database-config/config.json) 
    - `ENDPOINT`: the url that this system will use to send all results to TSRI.
        - ex. `http://localhost:8090/ws/project_analysis/result`
    - `SERVER_ADDRESS`: the domain name that this system uses.
        - ex. `http://localhost:8080`
    - `API_KEY`: String represent Token to authenticate request from TSRI. 
    (Usually comes from Django Access Token User Account)
        - ex. `"Token QWERTYUIOP123456789ASDFGHJKLZXCVB"`
        
- database [.env.dev.db](queueing/.env.dev.db)
    - `MYSQL_USER`: main username for database to create
    - `MYSQL_PASSWORD` : main password for above username
    - `MYSQL_ROOT_PASSWORD`: root password for database access
    - `MYSQL_DATABASE`: database name to create
    - `TZ`: Timezone for the system.
        - ex.  `Asia/Bangkok`
        
- rabbitmq [.env.dev.rabbitmq](queueing/.env.dev.rabbitmq)
    - `RABBITMQ_DEFAULT_USER`: username to initialize rabbitmq
    - `RABBITMQ_DEFAULT_PASS`: password for above username

- worker [.env.dev.worker](queueing/.env.dev.worker)
    - `PROXY_DOMAIN`: the domain name to use in download process. Leave this blank to use the given one.
        - if this is set to `https://abc.com` and the given url is `https://xyz.com/doc/qwerty_doc.pdf`. 
        The final url that download process usw will be `https://abc.com/doc/qwerty_doc.pdf`

> There is [database config file](queueing/database-config/config.json) 
> used in Express application. You need to edit this file to match with [database env file](queueing/.env.dev.db).
> This file **should not** be push to any git repositories. Like .env files. Since it contains database secrets.

### TSRI
There are 2 env files
- main [.env.dev](tsri/.env.dev)
    - `DEBUG`: `1` for debug `0` for production
    - `DJANGO_ALLOWED_HOSTS`: allow host for Django
    - `SQL_ENGINE`: SQL Engine to use
        - ex. `django.db.backends.postgresql_psycopg2` for Postgres
        - default value is `django.db.backends.sqlite3` for SQLite
    - `SQL_DATABASE`: database name
    - `SQL_USER`: username for accessing database
    - `SQL_PASSWORD`: password associated with above username
    - `SQL_HOST`: database host
        - default to `localhost`
    - `SQL_PORT`: database port
        - default to `5432` which is default Postgres Port
    - `DOMAIN_NAME`: this TSRI Domain name
        - ex. `http://localhost:8090`
    - `API_URL`: the url endpoint that TSRI will use to send request to Queueing System
        - ex. `http://localhost:8080/api/request`
        
- database [.env.dev.db](tsri/.env.dev.db)
    - `POSTGRES_USER`: username to initialize database
    - `POSTGRES_PASSWORD`: password for above username
    - `POSTGRES_DB`: database name to create

## Development Environment
Development Environment provides some extra features such as
- hot-reload code changes
- real-time debugging logs
- worry-free environment since these all run inside containers
- all images are built with development-focus.

### Start development environment
```bash
make dev-system
```
- TSRI Web Application is running on [http://localhost:8090](http://localhost:8090)
- Queueing System is running on [http://localhost:8080](http://localhost:8080)
> Port can be config by editing docker-compose file 
in respected directories [tsri](tsri) or [queueing](queueing).
### First-time-only setup steps
When the above command finished running.
You will have the brand-new system with empty databases. You need to
- run migration command on both **TSRI** and **Queueing** system
```bash
make dev-queueing-migrate
make dev-tsri-migrate
```
- initialize master data to **TSRI**
```bash
make dev-tsri-init-data
```
- create super user on django system
```bash
make dev-tsri-createsuperuser
```
> Note that these steps are "first-time-only" things. 
  You don't need to run them everytime you start this environment.
### Stop development environment
```bash
make dev-down
```
## Production Environment
Production Environment cuts out development helper feature and focus on performance and security.
- hot-reload is disabled
- logging is disabled on most parts (except system log files)
- all images are built with performance-focus.
### Working with production environment
You can use the same development environment commands with a little tweak on them.
By replacing `dev` with `production`. for an example.
```bash
make dev-system
```
turns to
```bash
make production-system
```
> Be **extra careful** when you're trying to run command that related to database function. 
>Make sure you use them correctly. 