terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./module/vpc"

  vpc_cidr               = var.vpc_cidr
  public_subnet_cidr_1   = var.public_subnet_cidr_1
  public_subnet_cidr_2   = var.public_subnet_cidr_2
  private_subnet_cidr_1  = var.private_subnet_cidr_1
  private_subnet_cidr_2  = var.private_subnet_cidr_2
}

module "sg" {
  source = "./module/sg"

  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./module/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  public_subnet_1_id = module.vpc.public_subnet_1_id
  public_subnet_2_id = module.vpc.public_subnet_2_id
  security_group_id  = module.sg.web_sg_id
}

module "database" {
  source = "./module/database"

  rds_instance_class = var.rds_instance_class
  rds_username       = var.rds_username
  rds_password       = var.rds_password
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
  security_group_id   = module.sg.db_sg_id
}
