# a09 EC2

resource "aws_instance" "t02_nginx_server" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = aws_subnet.t01_public_subnet_01.id
  vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]
  tags                   = var.aws_instance_tags
  associate_public_ip_address = true
}

