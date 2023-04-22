# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpcs

# data "aws_vpc" "adl_eks_vpc" {
#   tags = {
#     Name = "adl-eks-vpc"
#   }
# }

# data "aws_subnet" "eks_public_subnet_01" {
#   tags = {
#     Name = "eks-public-subnet-01"
#   }
# }


# https://wahlnetwork.com/2020/04/30/filter-terraform-data-source-by-aws-tag-value/

# https://www.youtube.com/watch?v=9cDDZzl7zow                          

data "aws_vpc" "vpc" {                                          # in order to create EC2 , YOU WILL NEED VPC AND SUBNET  on this case there is three way to get
  filter {                                                      # get vpc and subnet. 1- got get the vpc ID in AWS in the same region where you have you vpc/ec2
    name   = "tag:Name"
    values = ["25601-dev-election-vpc"]                                                  #2- you can pull vpc ip out of you remote statefile romote backend block
  }                                                             # 3 you can got get it in date parameter store
}

data "aws_subnet" "private_subnet" {
  filter {
    name   = "tag:Name"                     #to get the values , go to vpc. subnet select subnet , then tag then choise value
    values = ["25601-dev-election-vpc-private-subnet-db-01"]   #25601-dev-election-vpc-private-subnet-db-01
  }
}


