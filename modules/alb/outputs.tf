output "focalboard_instance" {
  description = "value"
  value       = aws_lb.focalboard.dns_name
}

output "focalboard_targetgroup_arn" {
  description = "value"
  value       = aws_lb_target_group.focalboard.arn
}