terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "state-bucket-tf"
    key    = "networking-example/terraform.tfstate"
    region = var.region
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
