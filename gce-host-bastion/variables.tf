
// Region & Zone
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-b"
}

//Network & subnet
variable "network_name" {
  default = "network-custom"
}
variable "network_cidr" {
  default = "10.127.0.0/20"
}

variable "subnetwork_name" {
  default  = "subnet-custom"
}

variable "access_config" {
  description = "The access config block for the instances. Set to [{}] for ephemeral external IP."
  type        = "list" // Ip External None
  default     = []
}
variable "self_link" {
    default = ""
}

variable "firewall" {
    default = "web-rules-allow"
}
//Compute Instance webserver
variable "compute_instance" {
  default = "webserver"
}
variable "machine-type" {
  default = "f1-micro"
}
variable "image" {
  default = "debian-cloud/debian-9"
}

variable "startup-script" {
  description = "nginx install"
  type        = "string"
  default = "sudo apt-get update && sudo apt-get install nginx -y"
}

// Bastion host
variable "bastion" {
  default = "bastion1"
}

variable "bastion_machine_type" {
  default = "f1-micro"
}
variable "firewall-bastion" {
    default = "ssh-rules-allow"
}