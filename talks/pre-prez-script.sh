
## prerequis

#sudo apt install pv

# stop uneeded containers
(cd /home/echomton/git/it/traefik; docker-compose stop)


# build needed docker images
(cd ../docker/ansible_control_node/; docker build -t ansible_v1 -f ansible_v1_Dockerfile . ; docker build -t ansible_v2 -f ansible_v2_Dockerfile .)


# stop demo containers


# On crée les stack de docker compose en avance mais on les stop
docker-compose -p ansible2 -f ../docker/docker-compose-ansible-v2.yml up -d
docker-compose -p ansible2 -f ../docker/docker-compose-ansible-v2.yml stop
docker-compose -p ansible -f ../docker/docker-compose-ansible-v1.yml up -d
docker-compose -p ansible -f ../docker/docker-compose-ansible-v1.yml stop
docker-compose -p parc -f ../docker/docker-compose-parc.yml up -d
docker-compose -p parc -f ../docker/docker-compose-parc.yml stop

docker ps


# TODO : en post prez scroipt: down toutes les stacks