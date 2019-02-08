provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "${var.aws_region}"
}

resource "aws_instance" "example" {
  ami                         = "ami-0cd3dfa4e37921605"
  instance_type               = "${var.instance_type}"
  key_name                    = "tf-training"
  associate_public_ip_address = false

  tags = {
    Name = "${var.application_name}-ec2"
  }
}


