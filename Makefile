init:
	ansible-playbook -i inventory.ini playbook.yml
deploy:
	ansible-playbook playbook.yml --ask-vault-pass -i inventory.ini -t deploy
edit-vault:
	ansible-vault edit group_vars/all/vault.yml
create-vault:
	ansible-vault encrypt group_vars/all/vault.yml
