# TSRI / Queueing Core System
Core System and Boot script for TRSI / Queueing Infrastructure
## Prerequisite
- [Docker](https://www.docker.com): 
The entire system is built on Containerization Technology (Docker 🐳) 
for easy and fast development / deployment workflow
## Installation
We have 3 different methods to set up the system environments including
1. Development [Go to docker-compose directory for more](docker-compose)
2. Production without Kubernetes [Go to docker-compose directory for more](docker-compose)
3. Production with Kubernetes [Still working on this](kubernetes)
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
| In-Memory Database                 | Redis                         | Store Refresh Token for authentication system                                               |
| Web Server / Reverse Proxy         | NGINX                         | Serve Static File / Reverse Proxy for Queueing System                                       |
| Admin Console                      | Nuxt.js (Vue.js - JavaScript) | Admin / Developer console for system overall status and detail                              |
| Worker(s) - NLP / Machine Learning | Python / Java                 | Contains NLP / ML / DL code and execute tasks from Message Broker (Modeling, Deepcut, etc.) |