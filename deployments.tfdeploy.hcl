identity_token "aws" {
  audience = ["aws.workload.identity"]
}

store "varset" "tokens" {
  id       = "varset-6pcUK8q4FQVLBRJY"
  category = "env"
}

deployment "dev" {
  inputs = {
    identity_token          = identity_token.aws.jwt
    role_arn                = store.varset.tokens.role_dev

    region        = "us-east-1"
    cidr_block      = "10.20.0.0/16"
  }
}

publish_output "dev_vpc_id" {
  description = "The networking Stack's VPC ID."
  value       = deployment.dev.vpc_id
}
