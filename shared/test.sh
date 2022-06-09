cp -f ansible-to_copy.cfg /home/ansible.cfg # Configuration needs to be copy to be out of workld writing dir

export ANSIBLE_CONFIG="/home/ansible.cfg"

ansible all -i inventory -u root -m command -a uptime

echo "sleeping before playbook test"
sleep 2

ansible-playbook -i inventory playbook.yml
