# AMI
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive

variable "aws_ami_owners" {
  default     = "amazon"
  type        = string
  description = "AWS AMI Name"
}
variable "aws_ami_filter_name" {
  default     = "name"
  type        = string
  description = "AWS AMI Filter Name"
}
variable "aws_ami_filter_values" {
  default     = "al2023-ami-*-x86_64"
  type        = string
  description = "AWS AMI Filter Values"
}

