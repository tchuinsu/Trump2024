 terraform {  
   backend "s3" {   
      bucket         = "25601-dev-election-trump-2024-state"     
      key            = "ec2-pravate/terraform.tfstate"               
      region         = "us-east-1"                           
      dynamodb_table = "25601-dev-election-state-lock"  
    } 
}
