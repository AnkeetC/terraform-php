# Provising Azure VM using Anasible approch to setup PHP Project 

### We need to make changes to our inventory.yml file to run our ansible playbook

### 1. Update Azure VM Public IP address 
### 2. Update ssh username 
### 3. Update path to your private key . for example in our case it should be  (./keyfile)

## Use this command to run your ansible playbook 
 ```bash 
 ansible-playbook -i inventory.yml ansible-playbook.yml
