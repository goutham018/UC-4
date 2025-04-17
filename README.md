# UC-4

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_database"></a> [database](#module\_database) | ./module/database | n/a |
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./module/ec2 | n/a |
| <a name="module_sg"></a> [sg](#module\_sg) | ./module/sg | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./module/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID for the EC2 instances | `string` | `"ami-04aa00acb1165b32a"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region | `string` | `"us-east-1"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type | `string` | `"t2.micro"` | no |
| <a name="input_private_subnet_cidr_1"></a> [private\_subnet\_cidr\_1](#input\_private\_subnet\_cidr\_1) | CIDR block for the first private subnet | `string` | `"10.0.3.0/24"` | no |
| <a name="input_private_subnet_cidr_2"></a> [private\_subnet\_cidr\_2](#input\_private\_subnet\_cidr\_2) | CIDR block for the second private subnet | `string` | `"10.0.4.0/24"` | no |
| <a name="input_public_subnet_cidr_1"></a> [public\_subnet\_cidr\_1](#input\_public\_subnet\_cidr\_1) | CIDR block for the first public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_public_subnet_cidr_2"></a> [public\_subnet\_cidr\_2](#input\_public\_subnet\_cidr\_2) | CIDR block for the second public subnet | `string` | `"10.0.2.0/24"` | no |
| <a name="input_rds_instance_class"></a> [rds\_instance\_class](#input\_rds\_instance\_class) | The instance class for the RDS MySQL database | `string` | `"db.t3.micro"` | no |
| <a name="input_rds_password"></a> [rds\_password](#input\_rds\_password) | The password for the RDS database | `string` | `"Admin2335"` | no |
| <a name="input_rds_username"></a> [rds\_username](#input\_rds\_username) | The username for the RDS database | `string` | `"admin"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->