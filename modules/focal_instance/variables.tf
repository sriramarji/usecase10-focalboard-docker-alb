variable "ami_id" {
  description = "ID of vpc"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "EC2 instance key pair"
  type        = string
}

# variable "security_group_ids" {
#     description = "value"
#     type = list(string)
# }

variable "vpc_id" {
  description = "ID of VPC"
  type        = string
}

variable "subnet_ids" {
  description = "value"
  type        = list(string)
}

variable "name" {
}
