output "vpc_id" {
  value       = aws_vpc.this.id
  description = "VPC id from network stack"
}

output "test_out" {
  value       = "test_manu"
  description = "random value"
}