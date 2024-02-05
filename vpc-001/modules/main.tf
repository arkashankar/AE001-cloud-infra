module "vpc-us-east-1"{
    source = "../"
    vpc_name_1 = var.override-vpc-name
    igw_name_1 = var.override-igw-name
    public_subnet_1_name = var.override-public-subnet-1
    public_subnet_2_name = var.override-public-subnet-2
    private_subnet_1_name = var.override-private-subnet-1
    private_subnet_2_name = var.override-private-subnet-2
    public_route_table_name = var.override-public-route-table
    private_route_table_name = var.override-private-route-table
}