variable "region" {
    type = string
    description = "(optional) describe your variable"
    default = "us-east-1"
}

variable "sg_name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-sg-1"
}

variable "ec2_type" {
    type = string
    description = "(optional) describe your variable"
    default = "t2.micro"
}