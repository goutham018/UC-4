resource "aws_db_instance" "mysql_db" {
  allocated_storage    = 20
  instance_class       = var.rds_instance_class
  engine               = "mysql"
  engine_version       = "8.0"
  username             = var.rds_username
  password             = var.rds_password
  db_name              = "mydatabase"
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [var.security_group_id]
  multi_az             = false
  storage_encrypted    = true
  skip_final_snapshot  = true
  backup_retention_period = 
  monitoring_interval  = 5
  AutoMinorVersionUpgrade: true
  enabled_cloudwatch_logs_exports = ["general", "error", "slowquery"]
  deletion_protection  = true
  iam_database_authentication_enabled = true
  copy_tags_to_snapshot     = true


  tags = {
    Name = "MySQL RDS Instance"
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "mysql-db-subnet-group"
  subnet_ids = [var.private_subnet_1_id, var.private_subnet_2_id]

  tags = {
    Name = "MySQL DB Subnet Group"
  }
}
