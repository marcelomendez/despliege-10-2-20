resource "aws_subnet" "sn-a" {
  vpc_id     = "${aws_vpc.enve-dev-webapp-vpc.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "sn-a"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = "${aws_vpc.enve-dev-webapp-vpc.id}"
  cidr_block = "10.2.0.0/24"
}

resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.secondary_cidr.vpc_id}"
  cidr_block = "10.2.0.0/24"

  tags = {
    Name = "sn-b"
  }
}
