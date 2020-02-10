resource "aws_instance" "enve-dev-webapp-srvr1" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.medium"
  key_name = "aws-key-mm"

vpc_security_group_ids = [ 
    "${aws_security_group.allow_ssh_anyware.id}" ,
    "${aws_security_group.allow_http_anyware.id}" 
  ]

  user_data = "${ file("data-source.txt") }"
  tags = {
    Name = "${var.project_name}"
  }
}

