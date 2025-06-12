resource "aws_instance" "web" {
  ami           = "ami-09e6f87a47903347c"  # Amazon Linux 2 AMI (replace per region)
  instance_type = "t2.micro"

  tags = {
    Name = "CI-CD-EC2"
  }
}
