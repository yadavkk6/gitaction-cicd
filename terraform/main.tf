terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.26.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "github_action_runner" {
  ami           = "ami-0b0ea68c435eb488d"
  instance_type = "t2.micro"

    tags = {
        Name = "GitHub Action Runner"
  }
}