 terraform {  
   backend "s3" {   
      bucket         = "25601-dev-election-trump-2024-state"     # name of the bucker
      key            = "bastion-host/terraform.tfstate"               # sub repository for statefile 
      region         = "us-east-1"                           # region
      dynamodb_table = "25601-dev-election-state-lock" # dynamodb name have 
    } 
}





#ariable "common_tags" {
# type = map(any)
# default = {
#   "AssetID"       = "25601"
#   "AssetName"     = "Insfrastructure"
#   "Environment"   = "dev"
#   "Project"       = "election"
#   "CreateBy"      = "Terraform"
#   "cloudProvider" = "aws"
#
