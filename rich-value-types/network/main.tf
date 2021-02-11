provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.network_config
  tags = {
    Name = var.network_config
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.network_config
  availability_zone = "us-west-2a"
  tags = {
    Name = var.network_config
  }
}

# Modified [main.tf] on [2021-02-11 11:40:19.960536]