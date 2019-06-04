#!/bin/bash
#Configure your Cloud Shell environment to use the Terraform by installing it with the appropriate package:
#Note: Terraform is distributed as a binary package for all supported platforms and architectures.
wget https://releases.hashicorp.com/terraform/0.11.9/terraform_0.11.9_linux_amd64.zip
#Unzip the downloaded package:
unzip terraform_0.11.9_linux_amd64.zip
#Set PATH environmental variable to Terraform binaries:
export PATH="$PATH:$HOME/terraform"
cd /usr/bin
sudo ln -s $HOME/terraform
cd $HOME
source ~/.bashrc