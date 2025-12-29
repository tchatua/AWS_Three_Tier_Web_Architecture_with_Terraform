# Terraform variable blocks only accept:
# type
# default
# description
# validation
# sensitive

# Generic Variables
variable "owner" {
  default     = "Arristide Tchatua"
  type        = string
  description = "Project Owner"
}
variable "buisness_division" {
  default     = "Laboratory"
  type        = string
  description = "Business Division"
}
variable "environment" {
  default     = "Dev"
  type        = string
  description = "Environment"
}
variable "project_directory" {
  default     = "~/OneDrive/Documents/11_Tchatua_Family/a12_DevOps/a05_AWS_Workshop_Lab/AWS_Three_Tier_Web_Architecture_with_Terraform"
  type        = string
  description = "Project Directory"
}
variable "emails" {
  default     = "tchattua@gmail.com"
  type        = string
  description = "Developer Email ID"
}
variable "resource_group_location_tag" {
  default     = "us-east-2"
  type        = string
  description = "Resource Group Location Tags"
}
# a01 Provider
variable "region" {
  default     = "us-east-2"
  type        = string
  description = "AWS Region"
}
# a02
# a03 VPC
variable "cidr_block_vpc" {
  default     = "10.0.0.0/16"
  type        = string
  description = "AWS Instance type"
}
variable "cidr_block_pub_sub_01" {
  default     = "10.0.1.0/24"
  type        = string
  description = "VPC CIDR Block"
}
variable "az_2a" {
  default     = "us-east-2a"
  type        = string
  description = "Availability Zone 1"
}
variable "az_2b" {
  default     = "us-east-2b"
  type        = string
  description = "Availability Zone 2"
}
variable "az_2c" {
  default     = "us-east-2c"
  type        = string
  description = "Availability Zone 3"
}
# a04 Subnets
# a05 Internet Gateweay
# a06 Route Tables
variable "traffic_from_anywhere_ipv4" {
  default     = "0.0.0.0/0"
  description = "Accept traffic from anywhere"
}
variable "traffic_from_anywhere_ipv6" {
  default     = "::/0"
  description = "Traffic from any IPV6 IP Address"
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
# a07 Security Groups
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
variable "from_port_zero" {
  default     = 0
  description = "From Port 0"
}
variable "minus_one_protocol" {
  default     = "-1"
  description = "Protocol -1"
}
# a08 Data AMI
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
# a09 EC2
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
variable "associate_public_ip_address_true" {
  default     = true
  type        = bool
  description = "Associate Public IP Address set to true"
}








