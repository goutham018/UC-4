variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "S3 bucket name for storing Terraform state"
  default     = "alb-project-bucket123"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_1" {
  description = "CIDR block for the first public subnet"
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for the first private subnet"
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
  default     = "10.0.4.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "rds_instance_class" {
  description = "The instance class for the RDS MySQL database"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_username" {
  description = "The username for the RDS database"
  type        = string
  default     = "Myrds1"
}

variable "rds_password" {
  description = "The password for the RDS database"
  type        = string
  sensitive   = true
  default     = "Myrds123"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  default     = "ami-04aa00acb1165b32a"
}
