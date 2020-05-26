# Setup with Docker Compose
This directory contains [Makefile](Makefile) which you can use to fast-forward many setup steps.
> It is a good idea to run these commands in-order to avoid some unexpected behaviors.
## Env file (.env*)
> Under construction

.env are files with some key-values to use in the system via docker-compose. 
Some of them are critical, credential, and consider secret. 
So **don't push them to any git repositories**. 
In this repo we provide an example on what and how you should edit these .env files.
> These files' name are formatted as 
>.env.{env-name}.{system-to-focus (optional. Empty means it's main .env file)}
>though this is not required but it's how to keep everything organize.
### Queueing
There are 3 env files
- main [.env.example](queueing/.env.example)
- database [.env.example.db](queueing/.env.example.db)
- rabbitmq [.env.example.rabbitmq](queueing/.env.example.rabbitmq)
### TSRI
There are 2 env files
- main [.env.example](tsri/.env.example)
- database [.env.example.db](tsri/.env.example.db)
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
### Start production environment
```bash
make production-system
```
### First-time-only setup steps
> Be **extra careful** when you're trying to run command that related to database function. 
>Make sure you use them correctly. 

When the above command finished running.
You will have the brand-new system with empty databases. You need to
- run migration command on both **TSRI** and **Queueing** system
```bash
make production-queueing-migrate
make production-tsri-migrate
```
- initialize master data to **TSRI**
```bash
make production-tsri-init-data
```
- create super user on django system
```bash
make production-tsri-createsuperuser
```
> Note that these steps are "first-time-only" things. 
  You don't need to run them everytime you start this environment.
### Stop production environment
```bash
make production-down
```
