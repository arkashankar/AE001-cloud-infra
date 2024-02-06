provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

locals {
  ami-map  = {
    "eu-west-1" = "ami-0277155c3f0ab2930"
  }
}

data "template_file" "user_data" {
  template = file("${path.module}/modules/user_data_script.sh")
}

resource "aws_instance" "example" {
  ami           = local.ami-map[var.region]  # Specify the AMI ID
  instance_type = "t2.micro"  # Specify the instance type
  vpc_security_group_ids = [aws_security_group.sg001.id]
  user_data     = data.template_file.user_data.rendered

  tags = {
    Name = "AE001-test-instance"
  }
}
