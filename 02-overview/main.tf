terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Tester" {
  ami = "ami-0cfde0ea8edd312d4" # Ubuntu Server 24.04 LTS (HVM),EBS General Purpose (SSD) Volume Type. Support available from Canonical // us-east-1
  instance_type = "t3.micro"
}
