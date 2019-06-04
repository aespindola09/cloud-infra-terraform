variable "startup-script" {
  description = "nginx install"
  type        = "string"
  default = "sudo apt-get update && sudo apt-get install nginx -y"
}