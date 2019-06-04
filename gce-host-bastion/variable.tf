variable "startup-script" {
  description = "nginx install"
  type        = "string"
  default = "sudo apt-get update && sudo apt-get install nginx -y"
}
variable "network_cidr" {
  default = "10.127.0.0/20"
}

variable "network_name" {
  default = "tf-custom-machine"
}

// Bastion host
variable "bastion_image_family" {
  default = "centos-7"
}

variable "bastion_image_project" {
  default = "centos-cloud"
}

variable "bastion_machine_type" {
  default = "f1-micro"
}