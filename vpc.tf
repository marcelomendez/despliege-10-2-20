resource "aws_vpc" "enve-dev-webapp-vpc" {
  cidr_block           = "${var.public_ip}"
  instance_tenancy = "dedicated"
  enable_dns_hostnames = "true"

  tags = {
    Name = "enve-dev-webapp-vpc"
  }
}

