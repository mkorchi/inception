# build images for the services defined in yml file
build:
	sudo docker-compose build

# start containers 
up:
	sudo docker-compose up -d

# logs of the containers on the console in real-time
logs:
	sudo docker-compose logs -f

# stop and remove all containers defined 
down:
	sudo docker-compose down	

down_v:
	sudo docker-compose down --volumes

# stop all running containers
stop:
	sudo docker-compose stop

# start all stopped containers
start:
	sudo docker-compose start

# restart all running containers
restart:
	sudo docker-compose restart


clear_volumes:
	sudo docker volume rm mariadb
	sudo docker volume rm wordpress

clear_imgs:
	sudo docker image rm -f mariadb
	sudo docker image rm -f wordpress


fclean: clear_volumes clear_imgs

# list all containers defined in the yml file
ps:
	sudo docker-compose ps
