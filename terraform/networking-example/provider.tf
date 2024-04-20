terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "state-bucket-tf"
    key    = "${var.project}/terraform.tfstate"
    region = var.region
  }
}

provider "aws" {
  region = var.region
}
