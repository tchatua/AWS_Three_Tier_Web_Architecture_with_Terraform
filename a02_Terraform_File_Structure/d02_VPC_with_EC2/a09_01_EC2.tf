# a09 EC2
resource "aws_instance" "t02_nginx_server" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = local.aws_instance.instance_type
  key_name                    = local.aws_instance.key_name
  subnet_id                   = aws_subnet.public_subnet_01.id
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  tags                        = local.common_tags
  associate_public_ip_address = local.aws_instance.associate_public_ip_address
}
