resource "aws_instance" "web_server_1" {
  ami                      = var.ami_id
  instance_type            = var.instance_type
  subnet_id                = var.public_subnet_1_id
  vpc_security_group_ids   = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "Instance A"
  }

  user_data = <<-EOF
              #!/bin/bash
              # Update and install Nginx
              sudo yum update -y
              sudo amazon-linux-extras enable nginx1
              sudo yum install -y nginx

              # Start and enable Nginx service
              sudo systemctl start nginx
              sudo systemctl enable nginx

              # Create a basic HTML page
              echo "Hello Instance A" | sudo tee /usr/share/nginx/html/index.html
              EOF
}

resource "aws_instance" "web_server_2" {
  ami                      = var.ami_id
  instance_type            = var.instance_type
  subnet_id                = var.public_subnet_2_id
  vpc_security_group_ids   = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "Instance B"
  }

  user_data = <<-EOF
              #!/bin/bash
              # Update and install Nginx
              sudo yum update -y
              sudo amazon-linux-extras enable nginx1
              sudo yum install -y nginx

              # Start and enable Nginx service
              sudo systemctl start nginx
              sudo systemctl enable nginx

              # Create a basic HTML page
              echo "Hello  Instance B" | sudo tee /usr/share/nginx/html/index.html
              EOF
}
