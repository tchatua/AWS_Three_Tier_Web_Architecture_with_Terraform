resource "aws_instance" "t02_sample_server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = "kubectl_argocd_keypair"

  tags = {
    Name = "T02-EC2"
  }

}