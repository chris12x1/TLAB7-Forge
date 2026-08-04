terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "tlab7-state-vault-glr3"
    key    = "tlab7/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "sabotaged_sg" {
  name        = "tlab7-exposed-sg"
  description = "A dangerously exposed security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # SABOTAGE: SSH exposed to the world
  }
}
