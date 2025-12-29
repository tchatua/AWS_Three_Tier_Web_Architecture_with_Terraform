locals {
  owner                = var.owner
  buisness_division    = var.buisness_division
  environment          = var.environment
  project_directory    = var.project_directory
  emails               = var.emails
  resource_name_prefix = "${var.resource_group_location_tag}-${var.buisness_division}-${var.environment}"
  # resource_name_prefix = "${var.buisness_division}-${var.environment}"
  common_tags = {
    owner             = local.owner
    buisness_division = local.buisness_division
    environment       = local.environment
    project_directory = local.project_directory
    emails            = local.emails
  }
  # a01 AWS Region
  aws_region = {
    location = var.region
  }
  # a02
  # a03 VPC
  aws_vpc = {
    cidr_block = {
      vpc                        = var.cidr_block_vpc
      public_subnet_01           = var.cidr_block_pub_sub_01
      traffic_from_anywhere_ipv4 = var.traffic_from_anywhere_ipv4
      traffic_from_anywhere_ipv6 = var.traffic_from_anywhere_ipv6
    }
    availability_zone = {
      az1 = var.az_2a
      az2 = var.az_2b
      az3 = var.az_2c
    }

  }
  # a04 Subnets
  # a07 Security Groups
  aws_security_group = {
    allow_tls = {
      name = var.allow_http_ssh_sg_name
      ingress = {
        http_port    = var.http_port
        ssh_port     = var.ssh_port
        protocal_tcp = var.protocal_tcp
      }
      egress = {
        from_port_zero     = var.from_port_zero
        minus_one_protocol = var.minus_one_protocol
      }
    }
  }
  # a09 EC2
  aws_instance = {
    instance_type               = var.instance_type
    key_name                    = var.key_name
    associate_public_ip_address = var.associate_public_ip_address_true
  }

  # End Loacals
}