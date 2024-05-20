provider "aws" {
  region = var.region
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}
resource "aws_subnet" "main1" {
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = var.ip_on_launch
  availability_zone       = "${var.region}a"
  cidr_block              = var.sub1_cidr

  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "main2" {
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = var.ip_on_launch
  availability_zone       = "${var.region}b"
  cidr_block              = var.sub2_cidr

  tags = {
    Name = "subnet2"
  }
}
resource "aws_subnet" "main3" {
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}c"
  cidr_block              = var.sub3_cidr

  tags = {
    Name = "subnet3"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "IGW"
  }
}
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Route Table"
  }
}
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main1.id
  route_table_id = aws_route_table.rt.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.main2.id
  route_table_id = aws_route_table.rt.id
}
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.main3.id
  route_table_id = aws_route_table.rt.id
}