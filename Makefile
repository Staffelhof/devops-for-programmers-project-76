init:
	ansible-playbook -i inventory.ini playbook.yml
deploy:
	ansible-playbook playbook.yml -i inventory.ini -t deploy
