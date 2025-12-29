# a09 EC2
# To make my created resources usefull

output "instance_type_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.t02_nginx_server.id
}
output "public_ip" {
  description = "EC2 Public iP"
  value       = aws_instance.t02_nginx_server.public_ip
}
output "private_ip" {
  description = "EC2 Private iP"
  value       = aws_instance.t02_nginx_server.private_ip
}
output "public_dns" {
  description = "EC2 Public DNS"
  value       = aws_instance.t02_nginx_server.public_dns
}
