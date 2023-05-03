provider "aws" {
  region = "us-east-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY
}
resource "aws_instance" "web" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
  
  tags = {
    name = "HelloWorld"
  }
}
