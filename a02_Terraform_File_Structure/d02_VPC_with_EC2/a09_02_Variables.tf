# a09 EC2
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive

variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "AWS Instance type"
}
variable "key_name" {
  default     = "kubectl_argocd_keypair"
  type        = string
  description = "Key Pair name"
}
variable "aws_instance_tags" {
  # Using proper TAGS (map, not string)
  # Easier cost tracking
  # Required in real AWS environments
  # Works with AWS billing & tagging policies
  type        = map(string)
  description = "Tags applied to the AWS Instance"
  default = {
    Name        = "T01-EC2"
    Environment = "Dev"
    Project     = "Terraform Lab"
    Owner       = "tchattua@gmail.com"
  }
}

