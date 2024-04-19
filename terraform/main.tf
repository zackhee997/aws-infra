terraform {
  backend "s3" {
    bucket = "state-bucket-tf"
    # key    = "path/to/my/key"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
