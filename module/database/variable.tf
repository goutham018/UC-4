variable "rds_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "rds_username" {
  description = "The username for the RDS instance"
  type        = string
}

variable "rds_password" {
  description = "The password for the RDS instance"
  type        = string
  sensitive   = true
}

variable "private_subnet_1_id" {
  description = "The ID of private subnet 1"
  type        = string
}

variable "private_subnet_2_id" {
  description = "The ID of private subnet 2"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group"
  type        = string
}
