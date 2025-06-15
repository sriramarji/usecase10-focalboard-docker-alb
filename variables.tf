variable "cidr_block" {
  description = "CIDR block"
  type        = string
  default     = "192.168.0.0/16"
}

variable "environment" {
  description = "value"
  type        = string
  default     = "dev"
}

variable "my-amiid" {
  description = "ID of vpc"
  type        = string
  default     = "ami-084568db4383264d4"
}

variable "my-instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "my-keyname" {
  description = "EC2 instance key pair"
  type        = string
  default     = "Hcl-prac-training"
}