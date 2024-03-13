module "ec2"{
    source = "../"
    region = var.region
    ec2_type = var.override_ec2_type
    sg_name = join("", ["AE001-sg ", var.override_sg_name])
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


output "vpc_ids" {
  value = data.aws_vpcs.AE001-vpc  # Output the IDs of the filtered subnets
}

output "aws_subnet" {
    value = data.aws_subnet.AE001-subnet-public
}