# a03 VPC
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive

variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "AWS Instance type"
}
variable "vpc_tags" {
  # Using proper TAGS (map, not string)
  # Easier cost tracking
  # Required in real AWS environments
  # Works with AWS billing & tagging policies
  type        = map(string)
  description = "Tags applied to the VPC"
  default = {
    Name        = "T01-VPC"
    Environment = "Dev"
    Project     = "Terraform Lab"
    Owner       = "tchattua@gmail.com"
  }
}

