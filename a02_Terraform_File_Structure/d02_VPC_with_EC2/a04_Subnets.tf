# Subnets

resource "aws_subnet" "public_subnet_01" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = local.aws_vpc.cidr_block.public_subnet_01
  availability_zone = local.aws_vpc.availability_zone.az1
  tags              = local.common_tags
}
