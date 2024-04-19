resource "aws_instance" "test_instance" {
  ami           = "ami-0dc44e17251b74325"
  instance_type = "t2.micro"
  tags = {
    Name = "test_instance"
  }
}
