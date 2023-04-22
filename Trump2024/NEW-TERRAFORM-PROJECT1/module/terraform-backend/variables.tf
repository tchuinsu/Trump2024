variable "aws_region" {
  type = string
}

variable "common_tags" {
  type = map(any)
  default = {
    "AssetID"       = "25601"
    "AssetName"     = "Insfrastructure"
    "Environment"   = "dev"
    "Project"       = "election"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }
}

variable "enable_versioning" {
  type    = string
  default = "true"
}

variable "read_capacity" {
  type = string
}

variable "write_capacity" {
  type = string
}

