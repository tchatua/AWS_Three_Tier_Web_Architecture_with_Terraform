# a03 VPC

resource "aws_vpc" "vpc" {
  cidr_block = local.aws_vpc.cidr_block.vpc
  tags       = local.common_tags
}