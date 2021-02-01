# Jenkins-AWS-terraform
This repository is for a POC of Jenkins into EC2 instance on AWS, using terraform, template file init and Ansible.

# About Terraform
Install Terraform, need version 0.12 or superior.
* Over Centos7:
```
sudo yum update && sudo yum install wget unzip -y
export VERSION=0.12.25
sudo wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -P /tmp
sudo unzip /tmp/terraform_${VERSION}_linux_amd64.zip -d /usr/local/bin/
```

* Over Mac:
```
brew install terraform
```

* Over Ubuntu:
```
sudo apt-get update && sudo apt-get install wget unzip -y
export VERSION=0.12.25
sudo wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -P /tmp
sudo unzip /tmp/terraform_${VERSION}_linux_amd64.zip -d /usr/local/bin/
```

* Setup with local terraform:
```
terraform init && terraform plan
terraform apply -auto-approve
```

# Ansible
Install Ansible

* Over Centos7:
```
sudo yum install -y epel-release && sudo yum install -y ansible
```

* Over Mac:
```
brew ins install terraform
```

* Over Ubuntu:
```
sudo apt-get update && sudo apt-get install ansible -y
```

### One a terraform apply was run, send this command for install apache to remote server using Ansible.
* Depending of your user use ec2-user for AWS AMIs, but maybe in your AMI is diferent, and change the host in the setup.yaml and hosts
```
ansible-playbook setup.yml --user=ec2-user -i hosts
```

## Important Notes:
* You must create a ssh key pair using ssh ssh-keygen look at the variable "ssh_key" into variables.tf
* This is a POC, try to use a pipeline and service account for the credentials, or use git-crypt.