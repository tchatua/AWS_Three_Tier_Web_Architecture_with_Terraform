# a07 Security Groups

resource "aws_security_group" "allow_tls" {
  name        = local.aws_security_group.allow_tls.name
  description = "Allow HTTP & SSH inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc.id
  tags        = local.common_tags

  ingress {
    description      = "Open HTTP Port"
    from_port        = local.aws_security_group.allow_tls.ingress.http_port
    to_port          = local.aws_security_group.allow_tls.ingress.http_port
    protocol         = local.aws_security_group.allow_tls.ingress.protocal_tcp
    cidr_blocks      = [local.aws_vpc.cidr_block.traffic_from_anywhere_ipv4]
    ipv6_cidr_blocks = [local.aws_vpc.cidr_block.traffic_from_anywhere_ipv6]
  }

  ingress {
    description      = "Open SSH Port"
    from_port        = local.aws_security_group.allow_tls.ingress.ssh_port
    to_port          = local.aws_security_group.allow_tls.ingress.ssh_port
    protocol         = local.aws_security_group.allow_tls.ingress.protocal_tcp
    cidr_blocks      = [local.aws_vpc.cidr_block.traffic_from_anywhere_ipv4]
    ipv6_cidr_blocks = [local.aws_vpc.cidr_block.traffic_from_anywhere_ipv6]
  }

  egress {
    from_port        = local.aws_security_group.allow_tls.egress.from_port_zero
    to_port          = local.aws_security_group.allow_tls.egress.from_port_zero
    protocol         = local.aws_security_group.allow_tls.egress.minus_one_protocol
    cidr_blocks      = [local.aws_vpc.cidr_block.traffic_from_anywhere_ipv4]
    ipv6_cidr_blocks = [local.aws_vpc.cidr_block.traffic_from_anywhere_ipv6]
  }
}
