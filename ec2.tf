resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (replace per region)
  instance_type = "t2.micro"

  tags = {
    Name = "CI-CD-EC2"
  }
}
