terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "apprenticeship"
}
resource "aws_vpc" "capstone" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "cloud-operations-vpc"
  }
}
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.capstone.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "cloud-operations-public-subnet"
  }
}
resource "aws_subnet" "private_db_a" {
  vpc_id     = aws_vpc.capstone.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "cloud-operations-private-db-subnet-a"
  }
}
resource "aws_subnet" "private_db_b" {
  vpc_id     = aws_vpc.capstone.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "cloud-operations-private-db-subnet-b"
  }
}
resource "aws_internet_gateway" "capstone" {
  vpc_id = aws_vpc.capstone.id

  tags = {
    Name = "cloud-operations-igw"
  }
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.capstone.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.capstone.id
  }

  tags = {
    Name = "cloud-operations-public-rt"
  }
}
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table" "private_db" {
  vpc_id = aws_vpc.capstone.id

  tags = {
    Name = "cloud-operations-private-db-rt"
  }
}
resource "aws_route_table_association" "private_db_a" {
  subnet_id      = aws_subnet.private_db_a.id
  route_table_id = aws_route_table.private_db.id
}
resource "aws_route_table_association" "private_db_b" {
  subnet_id      = aws_subnet.private_db_b.id
  route_table_id = aws_route_table.private_db.id
}
resource "aws_security_group" "ec2" {
  description = "Security group for Cloud Operations Dashboard EC2"
  name   = "cloud-operations-ec2-sg"
  vpc_id = aws_vpc.capstone.id

  tags = {
    Name = "cloud-operations-ec2-sg"
  }
}
resource "aws_vpc_security_group_ingress_rule" "ec2_ssh" {
  security_group_id = aws_security_group.ec2.id
  cidr_ipv4         = "98.122.34.115/32"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}
resource "aws_security_group" "db" {
  description = "Security group for Cloud Operations Dashboard database"
  name   = "cloud-operations-db-sg"
  vpc_id = aws_vpc.capstone.id

  tags = {
    Name = "cloud-operations-db-sg"
  }
}
resource "aws_vpc_security_group_ingress_rule" "db_mysql" {
  security_group_id            = aws_security_group.db.id
  referenced_security_group_id = aws_security_group.ec2.id
  from_port                    = 3306
  to_port                      = 3306
  ip_protocol                  = "tcp"
}
resource "aws_subnet" "public_b" {
  vpc_id     = aws_vpc.capstone.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "cloud-operations-public-subnet-b"
  }
}
resource "aws_db_subnet_group" "capstone" {
  name = "cloud-operations-db-subnet-group"

  subnet_ids = [
    aws_subnet.private_db_a.id,
    aws_subnet.private_db_b.id
  ]

  tags = {
    Name = "cloud-operations-db-subnet-group"
  }
}
data "aws_vpc" "existing" {
  id = var.vpc_id
}
data "aws_subnet" "public" {
  id = var.public_subnet_id
}
data "aws_security_group" "ec2" {
  id = var.ec2_security_group_id
}
