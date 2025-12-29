# Security Groups

resource "aws_security_group" "allow_http_ssh" {
  name        = var.allow_http_ssh_sg_name
  description = "Allow HTTP & SSH inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.t01_vpc.id
  tags        = var.allow_http_ssh_tags

  ingress {
    description      = "Open HTTP Port"
    from_port        = var.http_port
    to_port          = var.http_port
    protocol         = var.protocal_tcp
    cidr_blocks      = [var.traffic_from_anywhere]
    ipv6_cidr_blocks = [var.traffic_from_anywhere_ipv6]
  }

  ingress {
    description      = "Open SSH Port"
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocal_tcp
    cidr_blocks      = [var.traffic_from_anywhere]
    ipv6_cidr_blocks = [var.traffic_from_anywhere_ipv6]
  }

  egress {
    from_port        = var.from_port_zero
    to_port          = var.from_port_zero
    protocol         = var.minus_one_protocol
    cidr_blocks      = [var.traffic_from_anywhere]
    ipv6_cidr_blocks = [var.traffic_from_anywhere_ipv6]
  }
}
