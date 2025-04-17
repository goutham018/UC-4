output "web_server_1_id" {
  description = "The ID of Web Server 1"
  value       = aws_instance.web_server_1.id
}

output "web_server_2_id" {
  description = "The ID of Web Server 2"
  value       = aws_instance.web_server_2.id
}
