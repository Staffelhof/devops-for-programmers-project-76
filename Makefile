init:
	ansible-playbook -i inventory.ini playbook.yml
deploy:
	ansible-playbook -i inventory.ini playbook.yml
