
resource "aws_instance" "simpleinstance" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"
  availability_zone = var.region
}
