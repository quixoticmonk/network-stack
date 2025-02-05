resource "aws_vpc_ipam" "this" {
  operating_regions {
    region_name = var.region
  }
}



resource "aws_vpc" "this" {
  cidr_block=var.cidr_block
}
