# a01 Provider
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive
variable "region" {
  default     = "us-east-2"
  type        = string
  description = "AWS Region"
}



