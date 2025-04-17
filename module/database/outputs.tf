output "rds_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.mysql_db.id
}

output "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  value       = aws_db_subnet_group.db_subnet_group.name
}
