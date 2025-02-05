component "vpc" {
  source="./vpc"
  inputs={
    region=var.region
    cidr_block=var.cidr_block
  }
  providers = {
    aws = provider.aws.this
  }
}
