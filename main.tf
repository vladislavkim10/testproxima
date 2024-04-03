terraform {
  required_version = ">= 1.0.0"
 
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_d970f27eef0e6b26c161e86501586473eb3c45d2512cdeec3858c99c6aeb7d5b"
}

resource "digitalocean_droplet" "test-proxima-vm" {
  name   = "test-proxima-vm"
  region = "nyc1"  # Choose the desired region
  size   = "s-1vcpu-2gb"  # Choose the desired size
  image  = "debian-11-x64"  # Debian 11 x64 image

  user_data = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y openssh-server
    useradd -m -s /bin/bash ubuntu
    usermod -aG sudo ubuntu
    echo 'ubuntu:Ytrewq12345' | chpasswd
    echo "username ALL=(ALL:ALL) ALL" | sudo tee -a /etc/sudoers
    mkdir -p /home/ubuntu/.ssh
    # Copy authorized keys here if available
    chown -R ubuntu:ubuntu /home/ubuntu/.ssh
    chmod 700 /home/ubuntu/.ssh
    # Modify sshd_config
    sed -i '/^PermitRootLogin/c\PermitRootLogin no' /etc/ssh/sshd_config
    systemctl restart sshd
  EOF


}
