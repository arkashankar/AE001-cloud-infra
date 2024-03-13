variable "override_ec2_type" {
    type = string
    description = "(optional) describe your variable"
    default = "t2.micro"
}

variable "override_sg_name" {
    type = string
    description = "(optional) describe your variable"
    default = "test-sg"
}

variable "region" {
    type = string
    description = "(optional) describe your variable"
    default = "us-east-1"
}