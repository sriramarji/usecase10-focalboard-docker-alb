output "vpc_id" {
  value = aws_vpc.my-vpc.id
}

output "my_public_subnets" {
  value = aws_subnet.public_subnet[*].id
}