output "vpc_id" {
  value       = aws_vpc.this.id
  description = "VPC id from network stack"
}
output "ipam_pool_id" {
  value       = aws_vpc_ipam_pool.this.id
  description = "IPAM pool id"
}
