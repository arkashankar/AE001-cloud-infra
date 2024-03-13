provider "aws" {
  region = var.region  # Change this to your desired region
}

locals {
  ami-map  = {
    "eu-west-1" = "ami-0323d48d3a525fd18",
    "us-east-1" = "ami-0d7a109bf30624c99"
  }
}

data "aws_vpcs" "AE001-vpc" {
  filter {
    name   = "tag:Name"
    values = ["AE001-dev-vpc"]  # Specify the name of the VPC you're looking for
  }
}

data "aws_subnet" "AE001-subnet-public"{
  vpc_id = data.aws_vpcs.AE001-vpc.ids[0]

  filter {
    name   = "tag:Name"
    values = ["AE001-dev-public-subnet-2"]  # Specify the name of the VPC you're looking for
  }
}

data "template_file" "user_data" {
  template = file("${path.module}/modules/user_data_script.sh")
}

resource "aws_instance" "example" {
  ami           = local.ami-map[var.region]  # Specify the AMI ID
  instance_type = var.ec2_type  # Specify the instance type
  vpc_security_group_ids = [aws_security_group.sg001.id]
  user_data     = data.template_file.user_data.rendered
  subnet_id       = data.aws_subnet.AE001-subnet-public.id
  tags = {
    Name = "AE001-test-instance"
  }
}

output "vpc_ids" {
  value = data.aws_vpcs.AE001-vpc  # Output the IDs of the filtered subnets
}