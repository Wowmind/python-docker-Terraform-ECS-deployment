terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "mycompany-terraform-state-example-12345"
    key            = "python-rds/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks-prod"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}