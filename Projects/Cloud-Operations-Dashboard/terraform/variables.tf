variable "aws_region" {
  description = "AWS region for the capstone infrastructure"
  type        = string
  default     = "us-east-1"
}
variable "vpc_id" {
  description = "VPC ID for the capstone infrastructure"
  type        = string
}
variable "public_subnet_id" {
  description = "Public subnet ID for the capstone infrastructure"
  type        = string
}
variable "ec2_security_group_id" {
  description = "EC2 security group ID for the capstone infrastructure"
  type        = string
}
variable "db_subnet_group_name" {
  description = "RDS subnet group name for the capstone infrastructure"
  type        = string
}
variable "db_security_group_id" {
  description = "RDS security group ID for the capstone infrastructure"
  type        = string
}
