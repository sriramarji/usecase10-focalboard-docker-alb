variable "public_subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

# variable "security_group_id" {
#     description = "ID of the security group for the ALB"
#     type = string
# }

variable "vpc_id" {
  description = "ID of VPC"
  type        = string
}

variable "focal_instance" {
  description = " ID of the focalboard EC2 instance"
  type        = string
}

variable "alb_sg_name" {
  description = "name of alb security group"
  type        = string
}