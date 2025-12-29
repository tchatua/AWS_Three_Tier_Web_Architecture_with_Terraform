# Internet Gateway

resource "aws_internet_gateway" "t01_igw" {
  vpc_id = aws_vpc.t01_vpc.id

  tags = var.igw_tags
}