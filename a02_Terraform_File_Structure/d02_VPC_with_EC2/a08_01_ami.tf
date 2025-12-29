# AMI

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = [var.aws_ami_owners]

  filter {
    name   = var.aws_ami_filter_name
    values = [var.aws_ami_filter_values]
  }
}