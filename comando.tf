provider "aws" {
  region = "us-east-1"
}
#machine set
resource "aws_instance" "ubuntu_20_04" {
  ami = "${var.amis["us-east-1-ubuntu20"]}"
  instance_type = "${var.instance_type.micro}"
  key_name = "iru"
  tags = {
    "name" = "ubuntu_20_04"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso_geral.id}"]
}
