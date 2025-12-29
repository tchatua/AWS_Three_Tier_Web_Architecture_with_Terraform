# AWS Region
# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive

variable "allow_http_ssh_sg_name" {
  default     = "allow_http_ssh"
  description = "Accept traffic from anywhere"
}
variable "allow_http_ssh_tags" {
  # Using proper TAGS (map, not string)
  # Easier cost tracking
  # Required in real AWS environments
  # Works with AWS billing & tagging policies
  type        = map(string)
  description = "Tags applied to the HTTP & SSH inbound traffic Security Group"
  default = {
    Name        = "T01-HTTP-SSH-SG"
    Environment = "Dev"
    Project     = "Terraform Lab"
    Owner       = "tchattua@gmail.com"
  }
}
variable "http_port" {
  default     = 80
  description = "Open Port 80"
}
variable "ssh_port" {
  default     = 22
  description = "Open Port 22"
}
variable "protocal_tcp" {
  default     = "tcp"
  description = "TCP Protocol"
}
variable "traffic_from_anywhere_ipv6" {
  default     = "::/0"
  description = "Traffic from any IPV6 IP Address"
}
variable "from_port_zero" {
  default     = 0
  description = "From Port 0"
}
variable "minus_one_protocol" {
  default     = "-1"
  description = "Protocol -1"
}


