# iREMS Test Tasks - ANSWERS

## DevOps Tasks - Junior Level

### 1 - Server Provisioning

#### Describe the best way to automate Ubuntu (currently 20.04 LTS) installation on a new server that will become part of a Docker Swarm or Kubernetes cluster. You have the root password and SSH access. Describe both tools and methodology. Provide examples, if possible.

The best server provisioning, orchestration tool I have experience with is Terraform, so I would use that which I am familiar with to automate a new server/ pod creation into an existing cluster. Its declarative HCL language helps to see at first glance the desired output or current state of the cluster. I would use the K8s provider and add the existing namespace as a data set, which is already existing components that Terraform doesn’t have to create. After that, we can add a new resource for the new server, with the desired configurations. Additionally, terraform can work with helm, which is a useful package manager for k8s clusters and helps with its predefined templates, called helm charts. Certification, passwords and other sensitive materials can be and should be stored in k8s secrets, providing protection. Managing infrastructure this way can be version controlled, which reduces development time, helps to find errors in the build. Alternatively, we could use Ansible, which is somewhat similar in terms that some of their functions overlap, however, Ansible is a configuration management tool, agentless and also works through SSH.

- Docker Swarm is an orchestration tool for a group of virtual or physical machines, also called nodes, that manage containerized applications.

- A Kubernetes cluster is a set of nodes that run containerized applications. It is developed by Google, now open-source and used for orchestrating containers, containerized apps on all kinds of clouds, virtual machines, and physical machines.
- Both are orchestration tools, built to manage nodes that run containerized apps on them and these are the two major players in this field. While Kubernetes might be harder to set up, it is better suited for auto-scaling environments, fits for bigger, more complex projects.

### 2 - Automation and Documentation of recurring tasks

#### Create a backup script for PostgreSQL using pg_dump that compresses and encrypts the backup file (important: the unencrypted file should never be stored in the file system during the process). The backup script needs to be executed every night. Also, a sys admin should be able to run the script manually. Create a documentation and a procedure for the script, so that a new DevOps employee can understand the backup regime from the documentation and can check that the backup ran properly, or execute the backup script manually.

### 3 - Running GitLab with Docker Compose

#### Create a Dockerfile and a Docker Compose file that starts up a GitLab server so that:

1. it connects to an external PostgreSQL server
2. it uses the /var/data/gitlab directory of the host OS to store all data
3. all custom config files are part of the image

Please see files attached in irems-3 directory.

### 4 - Reverse Proxy

#### What a reverse proxy is

A reverse proxy - literally means a figure to represent somebody else - is a server, preferably sitting behind a firewall and delegating client requests coming to the backend server, so it is owned and managed by the host. Clients try to look up a website e.g. https://twitter.com and a reverse proxy server - if I am not mistaken Twitter uses NGINX - sits between the client the backend server that handles the requests to list new tweets and such. In reality, clients’ requests never truly reach the back-end mainframes, they communicate with the reverse proxy server, so the back-end servers may remain in secret, which adds a level of protection and anonymity. Additionally, it can perform load balancing which helps to distribute clients evenly across multiple backend servers. Furthermore, a reverse proxy server can compress inbound and outbound data, cache commonly requested content increasing the performance and add TLS encryption to the communication channel to further increase security.

#### What types of reverse proxies there are

- Load balancing
- Caching
- global server load balancing
- protection from attacks (like DDOS attacks)
- SSL encryption

#### Analyze and compare Nginx and Traefik

While Traefik is free and open-source NGINX is Although both are quite a similar load balancing reverse proxy servers offering multitudes of features, Traefik is focused on microservices, cloud-native applications, k8s clusters. Setting up a docker-compose file is easier in the case of the NGINX, however adding new services and managing is easier in Traefik. NGINX does not support monitoring for its free tier model.

### 5 - Shell Scripting
