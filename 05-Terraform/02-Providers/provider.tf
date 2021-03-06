provider "aws" {
   region = "us-east-2"
   version = ">=3.7,<=3.11"
}

provider "aws" {
   region = "us-west-1"
   alias  = "us-west-1"
   version = ">=3.7,<=3.11"
}

resource "aws_instance" "example_east" {
  ami           = "ami-0a0ad6b70e61be944"
  instance_type = "t2.micro"
}

resource "aws_instance" "example_west" {
  ami           = "ami-03130878b60947df3"
  instance_type = "t2.micro"
  provider      = aws.us-west-1
}
