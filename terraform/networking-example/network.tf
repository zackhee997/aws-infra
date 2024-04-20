# resource "aws_instance" "test_instance" {
#   ami           = "ami-0dc44e17251b74325"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "test_instance"
#   }
# }

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public_subnets" {
  count             = length(local.public_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(local.public_subnet_cidrs, count.index)
  availability_zone = element(local.availability_zones, count.index)

  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count             = length(local.private_subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(local.private_subnet_cidrs, count.index)
  availability_zone = element(local.availability_zones, count.index)

  tags = {
    Name = "Private Subnet ${count.index + 1}"
  }
}
