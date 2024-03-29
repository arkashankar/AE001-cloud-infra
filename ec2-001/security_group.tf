resource "aws_security_group" "sg001" {
  name        = var.sg_name
  description = "Allow inbound traffic on port 22 and 80"
  vpc_id = data.aws_vpcs.AE001-vpc.ids[0]

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"           // Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]  // Allow traffic to any IP address
  }
}
