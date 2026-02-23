provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "pedidos_veloz_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "pedidos-veloz-vpc"
  }
}

resource "aws_subnet" "pedidos_veloz_subnet" {
  vpc_id                  = aws_vpc.pedidos_veloz_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "pedidos-veloz-subnet"
  }
}

resource "aws_security_group" "pedidos_veloz_sg" {
  name        = "pedidos-veloz-sg"
  description = "Allow HTTP"
  vpc_id      = aws_vpc.pedidos_veloz_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
