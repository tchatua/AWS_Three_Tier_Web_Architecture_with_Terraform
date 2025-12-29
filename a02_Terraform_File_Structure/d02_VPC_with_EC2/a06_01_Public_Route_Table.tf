# Route table
resource "aws_route_table" "t01_public_rt" {
  vpc_id = aws_vpc.t01_vpc.id

  route {
    cidr_block = var.traffic_from_anywhere # Accept traffic from anywhere
    gateway_id = aws_internet_gateway.t01_igw.id
  }

  tags = var.public_rt_tags
}

# Subnet Association
resource "aws_route_table_association" "t01_public_rt_association" {
  subnet_id      = aws_subnet.t01_public_subnet_01.id
  route_table_id = aws_route_table.t01_public_rt.id
}