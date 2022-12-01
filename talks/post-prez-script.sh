
## prerequis

# stop demo containers


docker-compose -p ansible2 -f ../docker/docker-compose-ansible-v2.yml down
docker-compose -p ansible -f ../docker/docker-compose-ansible-v1.yml down
docker-compose -p parc -f ../docker/docker-compose-parc.yml down
