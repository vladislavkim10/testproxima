# 2048
. Setup infrastructure:

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

### Screenshot

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/1175750/8614312/280e5dc2-26f1-11e5-9f1f-5891c3ca8b26.png" alt="Screenshot"/>
</p>


