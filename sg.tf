resource "aws_security_group" "allow_ssh_anyware" {
  name        = "${var.project_name}-allow_ssh_anyware"
  description = "Permite acceso por ssh a todos"
  vpc_id      = "${aws_vpc.enve-dev-webapp-vpc.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "allow_http_anyware" {
  name        = "${var.project_name}-allow_http_anyware"
  description = "Permite acceso por http a todos"
  vpc_id      = "${aws_vpc.enve-dev-webapp-vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
