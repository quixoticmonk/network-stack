variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "role_arn" {
  type = string
  ephemeral=true
}

variable "region" {
  type        = string
  description = "Region to deploy to"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for network"
}
