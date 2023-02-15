terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}
module "beanstalk" {
  source = "./modules/beanstalk"
}
module "database" {
  source = "./modules/database"
}
module "compute" {
  source = "./modules/compute"
}
module "bucket"{
    source = "./modules/bucket"
}