variable "override-vpc-name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-vpc"
}

variable "override-igw-name" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-igw"
}

variable "override-public-subnet-1" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-public-subnet-1"
}

variable "override-public-subnet-2" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-public-subnet-2"
}

variable "override-private-subnet-1" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-private-subnet-1"
}

variable "override-private-subnet-2" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-private-subnet-2"
}

variable "override-public-route-table" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-public-route-table"
}

variable "override-private-route-table" {
    type = string
    description = "(optional) describe your variable"
    default = "AE001-dev-private-route-table"
}

