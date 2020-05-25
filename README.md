# TSRI / Queueing Core System
Core System and Boot script for TRSI / Queueing Infrastructure
## Prerequisite
- [Docker](https://www.docker.com): 
The entire system is built on Containerization Technology (Docker 🐳) 
for easy and fast development / deployment workflow
### Directory Structure
In order to use this system without the need to config every system components on how they 
handle each other. We **strongly** recommend you to create the following directory structure.

Some components are hosted in different GitHub repositories. 
You may need to have permission on all of them in order to obtain all code to run the system.
```bash
.root
│
│=======================================│  
│   Core System (This Git Repository)   │
│=======================================│
├── core-system
│   ├── README.md
│   ├── docker-compose
│   │   ├── Makefile
│   │   ├── queueing
│   │   └── tsri
│   └── kubernetes
│       ├── 01-init
│       ├── 02-deployments
│       ├── 03-services
│       └── secrets
│
│=======================================│  
│   Queueing System                     │
│=======================================│
├── queueing-system <--------------- (Create this)
│   ├── queueing-db <--------------- (Clone this)
│   │   ├── Dockerfile
│   │   └── ...
│   ├── queueing-express <---------- (Clone this)
│   │   ├── Dockerfile
│   │   ├── Dockerfile.dev
│   │   └── ...
│   ├── queueing-frontend <--------- (Clone this)
│   │   ├── Dockerfile
│   │   ├── Dockerfile.dev
│   │   └── ...
│   ├── queueing-nginx <------------ (Clone this)
│   │   ├── Dockerfile
│   │   ├── Dockerfile.dev
│   │   └── ...
│   └── queueing-worker <----------- (Clone this)
│       ├── Dockerfile
│       ├── Dockerfile.dev
│       └── ...
│
│=======================================│  
│   TSRI                                │
│=======================================│
└── tsri-system <------------------- (Create this)
    ├── tsri-django <--------------- (Clone this)
    │   ├── Dockerfile
    │   ├── Dockerfile.dev
    │   └── ...
    └── tsri-nginx <---------------- (Clone this)
        ├── k8s
        └── prod
```
## Infrastructure
This system contains 2 major parts. **TSRI** and **Queueing**
### TSRI
| Role                       | Tech                          | Explain                                        |
|----------------------------|-------------------------------|------------------------------------------------|
| Web Application            | Django Web Framework (Python) | TSRI Web Application                           |
| Database                   | Postgres                      | TSRI Postgres Database for TSRI Web Application|
| Web Server / Reverse Proxy | NGINX                         | Serve Static File / Reverse Proxy for TSRI     |
### Queueing
| Role                               | Tech                          | Explain                                                                                     |
|------------------------------------|-------------------------------|---------------------------------------------------------------------------------------------|
| API / Application                  | Express.js (Node.js)          | Controls and contains logic of API and Queueing system                                      |
| Database (Dev Environment)         | MariaDB                       | Database for Queueing System                                                                |
| Database (Production Environment)  | MySQL (Google SQL)            |                                                                                             |
| Message Broker                     | RabbitMQ                      | For queueing and distributing tasks across workers                                          |
| In-Memory Database                 | Redis                         | Store refresh token for authentication system                                               |
| Web Server / Reverse Proxy         | NGINX                         | Serve static files / reverse proxy for Queueing System                                       |
| Admin Console                      | Nuxt.js (Vue.js - JavaScript) | Admin / developer console for system overall status and detail                              |
| Worker(s) - NLP / Machine Learning | Python / Java                 | Contains NLP / ML / DL code and execute tasks from Message Broker (Modeling, Deepcut, etc.) |
## Setup
We have 3 different methods to set up the system environments including
1. Development [Go to docker-compose directory for more](docker-compose)
2. Production without Kubernetes [Go to docker-compose directory for more](docker-compose)
3. Production with Kubernetes [Still working on this](kubernetes)