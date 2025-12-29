# a06 Route table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id
  tags   = local.common_tags
  route {
    cidr_block = local.aws_vpc.cidr_block.traffic_from_anywhere_ipv4
    gateway_id = aws_internet_gateway.igw.id
  }
}

# Subnet Association
resource "aws_route_table_association" "public_rt_association" {
  subnet_id      = aws_subnet.public_subnet_01.id
  route_table_id = aws_route_table.public_rt.id
}