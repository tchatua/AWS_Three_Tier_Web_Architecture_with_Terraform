# AWS Region
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive

variable "traffic_from_anywhere" {
  default     = "0.0.0.0/0"
  description = "Accept traffic from anywhere"

}

variable "public_rt_tags" {
  # Using proper TAGS (map, not string)
  # Easier cost tracking
  # Required in real AWS environments
  # Works with AWS billing & tagging policies
  type        = map(string)
  description = "Tags applied to the Internet Gateway"
  default = {
    Name        = "T01-Public-Route-Table"
    Environment = "Dev"
    Project     = "Terraform Lab"
    Owner       = "tchattua@gmail.com"
  }
}
