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
