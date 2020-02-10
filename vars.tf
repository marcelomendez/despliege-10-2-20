#region
variable "region" {
  default = "us-east-1"
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
}

#ssh port
variable "ssh_port" {
  description = "allow ssh connections from internet network"
  default = 22
}

#http port
variable "http_port" {
  description = "allow http connections from internet network"
  default = 80
}

#key
variable "key" {
  default = "/home/el_marcem/Descargas/aws-key-mm.pem"
  description = "private_key"
}

#proyecto
variable "project_name" {
  default = "enve-dev-webapp"
}
#host
variable "public_ip" {
  default = "10.0.0.0/16"
}
#host_priv
variable "private_ip" {
  default = "10.98.1.0/24"
}

#igw
variable "igw-mm" {
  default = "mi-igw"
}
