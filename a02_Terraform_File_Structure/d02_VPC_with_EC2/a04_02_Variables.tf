# AWS Region
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive
variable "pub_sub_01__cidr_block" {
  default     = "10.0.1.0/24"
  type        = string
  description = "VPC CIDR Block"
}
variable "availability_zone_01" {
  default     = "us-east-2a"
  type        = string
  description = "Availability Zone 1"
}
variable "vpc_name" {
  default     = "T01_Subnet_01"
  type        = string
  description = "VPC Name"
}

variable "pub_sub_01_tags" {
  # Using proper TAGS (map, not string)
  # Easier cost tracking
  # Required in real AWS environments
  # Works with AWS billing & tagging policies
  type        = map(string)
  description = "Tags applied to the Public Subnet 01"
  default = {
    Name        = "T01-Public-Subnet-01"
    Environment = "Dev"
    Project     = "Terraform Lab"
    Owner       = "tchattua@gmail.com"
  }
}
