output "vpc_id" {
  description = "ID of the capstone VPC"
  value       = data.aws_vpc.existing.id
}
