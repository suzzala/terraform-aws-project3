provider "aws" {
  region     = "${var.region}"
  access_key = "${var.accesskey}"
  secret_key = "${var.secretkey}"
}

resource "aws_instance" "myfirstvar" {
  ami             = "${var.imageid}"
  instance_type   = "${var.instancetype}"
  key_name        = "${var.key}"
  security_groups = ["${aws_security_group.allow_all.name}"]
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all_1"
  description = "Allow all inbound traffic"
  vpc_id      = "vpc-45ef8a38"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
}
