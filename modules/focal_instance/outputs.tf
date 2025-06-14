output "instance_id" {
  description = "ID of EC2 instance"
  value       = aws_instance.focal.id
}

output "public_ip" {
  description = "instance publicip"
  value       = aws_instance.focal.public_ip
}

