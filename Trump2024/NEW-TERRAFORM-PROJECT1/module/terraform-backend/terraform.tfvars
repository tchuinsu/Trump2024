aws_region        = "us-east-1"
enable_versioning = true
common_tags = {
  "AssetID"       = "25601"
  "AssetName"     = "Insfrastructure"
  "Environment"   = "dev"
  "Project"       = "election"
  "CreateBy"      = "Terraform"
  "cloudProvider" = "aws"
}

read_capacity  = 5
write_capacity = 5
