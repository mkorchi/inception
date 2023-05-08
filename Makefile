
COMPOSE = sudo docker-compose -f srcs/docker-compose.yml

# build images for the services defined in yml file
build:
	$(COMPOSE) build

# start containers, will build any images that needs to be built before starting the containers, -d for detached mode
up:
	$(COMPOSE) up -d

# logs of the containers on the console in real-time, -f stands for follow
logs:
	$(COMPOSE) logs -f

# stop and remove all containers defined 
down:
	$(COMPOSE) down	

down_v:
	$(COMPOSE) down --volumes

# stop all running containers
stop:
	$(COMPOSE) stop

# start all stopped containers
start:
	$(COMPOSE) start

# restart all running containers
restart:
	$(COMPOSE) restart


clear_docker_volumes:
	sudo docker volume rm mariadb
	sudo docker volume rm wordpress

clear_volumes:
	sudo rm -rf ~/data/wordpress/*
	sudo rm -rf ~/data/mariadb/*

clear_imgs:
	sudo docker image rm -f wordpress
	sudo docker image rm -f nginx
	sudo docker image rm -f mariadb
	sudo docker image rm -f website
	sudo docker image rm -f adminer
	sudo docker image rm -f redis
	sudo docker image rm -f cadvisor
	sudo docker image rm -f ftp

fclean: clear_imgs clear_docker_volumes 

# list all containers defined in the yml file
ps:
	$(COMPOSE) ps

ffclean:
	sudo docker container prune  -f && docker network prune -f && docker image prune -f && docker volume prune -f

kill: fclean ffclean 