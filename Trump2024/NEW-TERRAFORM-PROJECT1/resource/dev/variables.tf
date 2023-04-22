variable "aws_region" {
  type = string
}

variable "common_tags" {
  type = map(any)
  default = {
    "AssetID"       = "25601"
    "AssetName"     = "Insfrastructure"
    "Environment"   = "dev1"
    "Project"       = "election"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }
}

variable "enable_versioning" {
  type = string
}

variable "read_capacity" {
  type = string
}

variable "write_capacity" {
  type = string
}

