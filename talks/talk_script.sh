#!/bin/bash

clear

. ../../demo-magic/demo-magic.sh

source talks_utils.sh

unset TYPE_SPEED

DEMO_PROMPT="${GREEN}➜ ${CYAN}\W ${COLOR_RESET}"

#### Size de l'ecra
#echo "#########################################################################################################"
#
#wait
#
#clear
#
#####
#
#figlet "Ansible Sandbox with Docker"
#
#wait
#
#print_type_wait "$(<texts/01-presentation_ech.txt )"
#
#
#print_type_wait "\n\nCeci est une démo (presque) automatisée \nÇa devrait bien se passer, non ? \U1F525 "
#
#
#clear
#
#figlet "Pourquoi ce talk ?"
#
#wait
#
#print_wait "$(<texts/02-pourquoi1.txt )"
#
#print_wait "$(<texts/03-pourquoi2.txt )"
#
#clear
#
#figlet "Pourquoi ce talk ?"
#
#print_wait "$(<texts/04-programme.txt )"
#
#write_figlet "READY ?"
#write_figlet "G0 !!"
#
#wait
#
#### Installation d'ansible
#clear
#figlet "Installer Ansible"
#
#print_wait "$(<texts/05-installer.txt )"
#
#pe "nano ../docker/ansible_control_node/ansible_v1_Dockerfile"
#
#p "docker build -t ansible_v1 -f ansible_v1_Dockerfile ."
#
#pe "docker run ansible_v1 ansible --version"
#
#echo "Ansible OK ! "
#
#wait
#
### On monte un parc de machines cibles avec des conteneurs dockers
#clear
#figlet "Des cibles !"
#
#print_wait "$(<texts/06-parc.txt )"
#
#pe "nano ../docker/docker-compose-parc.yml"
#
#pe "docker-compose -p parc -f ../docker/docker-compose-parc.yml up -d"
#
## Ici on triche en affichant qu'un morceaux de la commande: il y a seulement "docker ps" qui sera affiché
#pe 'docker ps' ' --format "table {{.ID}}\\t{{.Image}}\\t{{.Status}}\\t{{.Names}}"'
#
#wait
#
#clear
#figlet "Un test"
#
#print_wait "$(<texts/07-test.txt )"
#
#clear
#
#pe "docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' parc_centos1_1"
#
#pe "docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' parc_centos2_1"
#
#
#pe "cat ../shared/inventory-v1"
#
#pe "docker run -v $(pwd)/../shared:/ansible ansible_v1 ansible all --list-hosts --inventory inventory-v1"
#
#pe "nano ../docker/docker-compose-ansible-v1.yml"
#
#pei "docker-compose -p ansible -f ../docker/docker-compose-ansible-v1.yml up -d"
#
#pe "docker exec ansible_container ansible all --list-hosts --inventory inventory-v1"
#
#wait
#
#clear
#
#pe "docker exec ansible_container ansible all -m ping --inventory inventory-v1"
#
#wait
#
#clear
#
#figlet "POURQUOI ?"
#
#wait
#
#print_wait "$(<texts/08-pourquoi_ko.txt )"
#
#print_wait "$(<texts/09-solution_non.txt )"
#
#clear
#
#figlet "Solution:"
#
#write_figlet "STOP"
#
#wait
#
#clear
#
#figlet "Solution:"
#
#print_wait "$(<texts/11-docker_carre.txt )"
#
#print_wait "$(<texts/12-comment-docker.txt )"
#
### On va faire marcher ça en 2/2
#
#
#pe "nano ../docker/ansible_control_node/ansible_v2_Dockerfile"
#
#p "docker build -t ansible_v2 -f ansible_v2_Dockerfile ."
#
#pe "cat ../docker/docker-compose-ansible-v2.yml"
#
#pe "docker-compose -p ansible2 -f ../docker/docker-compose-ansible-v2.yml up -d"
#
#pe "nano ../shared/inventory-v2"
#
#pe "docker exec ansible_container2 ansible all -m ping --inventory inventory-v2"

#wait
#
#clear
#
#print_wait "Maintenant, un vrai lancement de playbook !"
#
#pei "cat ../shared/playbook.yml"
#
#echo -e "/n"
#
#wait
#
#clear
#
#pe "docker exec ansible_container2 ansible-playbook playbook.yml -i inventory-v2 "
#
#wait

clear
figlet "Pour aller plus loin:"

print_wait "$(<texts/13-plus_loin.txt )"


clear
figlet "Conclusion"
print_wait "$(<texts/14-conclusion.txt )"

clear

write_figlet "Merci !"

wait

clear

write_figlet "Des questions ?"

wait

#
#
#Limites:
#- pas de services

#- il faut choisir les bonnes images (il faut python !)
#- C'est vraiment quelque chose à faire en mode éducatif / test



##NE FAITES PAS CA ! Si vous avez vraiment besoin d'un systemd, prenez une VM !
#
#
## Alors comment on fait ?
#- on va utiliser la connexion docker et pas la connexion SSH
#- donc on utilise le plugin edition
#- il nous faut aussi ajouter docker dans l'image
#
## Et comment on fait communiquer ansible avec notre docker local ?
#et bah on partage le socket ma caille !
#
#et la: TADAAAAAA

#
#On continue un peu ?
#et hop ceci est une installation de semaphore
#
#Et qu'est ce qu'on pourrait faire pour s'amuser ? Un petite installation d'ARA, pour le monter en vrai ;)
#
#Limites:
#et bah c'est une limite assez évidente: on utilise des containers et pas des VMs. donc on se frotte
#
