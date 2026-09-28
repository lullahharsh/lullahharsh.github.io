terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "portfolio_server" {
  ami           = "ami-0fef201115eefe936"
  instance_type = "t3.micro"

  tags = {
    Name = "portfolioi-server"
  }
}
resource "aws_security_group" "portfolio_sg" {
  name        = "launch-wizard-1"
  description = "launch-wizard-1 created 2026-09-28T14:13:12.420Z"
  vpc_id      = "vpc-01d8dc285a3b7cdb6"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}