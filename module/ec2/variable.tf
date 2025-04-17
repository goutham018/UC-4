variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
}

variable "public_subnet_1_id" {
  description = "The ID of public subnet 1"
  type        = string
}

variable "public_subnet_2_id" {
  description = "The ID of public subnet 2"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group"
  type        = string
}
