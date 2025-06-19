init:
	ansible-playbook -i inventory.ini playbook.yml
deploy:
	ansible-playbook playbook.yml -i inventory.ini -t deploy --vault-password-file .password
edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml
create-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml
datadog:
	ansible-playbook -i inventory.ini playbook.yml -t datadog --vault-password-file .password
install:
	ansible-galaxy install -r requirements.yml