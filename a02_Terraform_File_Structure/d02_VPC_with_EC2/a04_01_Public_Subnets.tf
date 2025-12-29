# Subnets

resource "aws_subnet" "t01_public_subnet_01" {
  vpc_id            = aws_vpc.t01_vpc.id
  cidr_block        = var.pub_sub_01__cidr_block
  availability_zone = var.availability_zone_01
  tags              = var.pub_sub_01_tags
}
