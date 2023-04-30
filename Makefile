
COMPOSE = sudo docker-compose -f srcs/docker-compose.yml

# build images for the services defined in yml file
build:
	$(COMPOSE) build

# start containers 
up:
	$(COMPOSE) up -d

# logs of the containers on the console in real-time
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


clear_volumes:
	sudo docker volume rm mariadb
	sudo docker volume rm wordpress

clear_imgs:
	sudo docker image rm -f mariadb
	sudo docker image rm -f wordpress


fclean: clear_volumes clear_imgs

# list all containers defined in the yml file
ps:
	$(COMPOSE) ps

clear_all:
	sudo docker container prune && docker network prune && docker image prune && docker volume prune

