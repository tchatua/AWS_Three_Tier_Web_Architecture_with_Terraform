# a03 VPC

resource "aws_vpc" "t01_vpc" {
  cidr_block = var.vpc_cidr_block
  tags       = var.vpc_tags
}