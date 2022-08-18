
##bthis is a terraform file
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "db_server" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = "examplemultipleservers"
  }
}
