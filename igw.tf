resource "aws_internet_gateway" "enve-dev-webapp-igw" {
  vpc_id = "${aws_vpc.enve-dev-webapp-vpc.id}"

  tags = {
    Name = "enve-dev-webapp-igw"
  }
}

