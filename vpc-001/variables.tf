variable "vpc_name_1" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-vpc"
}

variable "igw_name_1" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-igw"
}

variable "public_subnet_1_name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-public-subnet-1"
}

variable "public_subnet_2_name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-public-subnet-2"
}

variable "private_subnet_1_name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-private-subnet-1"
}

variable "private_subnet_2_name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-private-subnet-2"
}

variable "public_route_table_name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-public_route_table"
}

variable "private_route_table_name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-private_route_table"
}