# AWS Region
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive
variable "igw_tags" {
  # Using proper TAGS (map, not string)
  # Easier cost tracking
  # Required in real AWS environments
  # Works with AWS billing & tagging policies
  type        = map(string)
  description = "Tags applied to the Internet Gateway"
  default = {
    Name        = "T01-IGW"
    Environment = "Dev"
    Project     = "Terraform Lab"
    Owner       = "tchattua@gmail.com"
  }
}
