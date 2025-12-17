# Description with data type
# Alphabetical order

output "autoscaling_group_name" {
  description = "The name of the EC2 autoscalig group"
  value       = aws_autoscaling_group.front_end.name
}

output "lb_public_dns" {
  description = "The DNS name of the Network Load Balancer"
  value       = aws_lb.front_end.dns_name
}