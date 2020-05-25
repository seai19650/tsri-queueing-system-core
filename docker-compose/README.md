# Setup with Docker Compose
this directory contains [Makefile](Makefile) which you can use to fast-forward many setup steps.
> It is a good idea to run these commands in-order to avoid some unexpected behaviors.
## Development Environment
### Start development environment
```bash
make dev-system
```
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
### Start production environment
```bash
make production-system
```
### First-time-only setup steps
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
