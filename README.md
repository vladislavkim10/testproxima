# Task 2048
Setup infrastructure:

  1.1 Create user 'ubuntu' with sudo permissions on your server
  
  1.2 Configure ssh for secure authentication and connection
  
  1.3 Write Ansible playbook to install nginx, docker, net-tools
  
  1.4 Write ansible task for adding ubuntu user to docker group
  
  1.5 Ansible has to use private key to auth

  
2. Deploy application:
  2.1 Fork https://github.com/gabrielecirulli/2048?tab=readme-ov-file to your profile
   
  2.2 Clone it and add Dockerfile to run as container
  
  2.3 Add Ansible playbook and other config files as folder to the repo 
  
  2.4 Add tasks to your playbook to deploy your application
  2.4.1 Clone repo to the server 
  2.4.2 Build image from source repo
  2.4.3 Run container  
  2.4.4 Prepare nginx config for your app to open it to the internet with domain
  

A small clone of [1024](https://play.google.com/store/apps/details?id=com.veewo.a1024), based on [Saming's 2048](http://


### Description of solution:

A droplet has been provisioned in DigitalOcean using  _main.tf_ manifest file via Terraform. 
It includes steps to create ubuntu user, grant sudo privileges, and transfer the public key to the remote repository.
This tasks can also be implemented through the Ansible playbook _initial-config.yml_.

_services-install.yml_ playbook installs Nginx, Docker, Net-tools, and Git.

_clone.yml_ playbook is responsible for cloning repositories from GitHub, copying Dockerfile, and running containers.

### Check:
Project is deployed on link: http://a1testa1.work.gd/

### Screenshot:

<p align="center">
  <img src="https://github.com/vladislavkim10/image/blob/main/task.png" alt="Screenshot"/>
</p>


<p align="center">
  <img src="https://github.com/vladislavkim10/image/blob/main/task2.png" alt="Screenshot"/>
</p>

