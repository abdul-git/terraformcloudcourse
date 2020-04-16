module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.29.0"

  # insert the 12 required variables here
  name = "poc-vpc"
  cidr = "10.0.0.0/16"
   azs             = ["us-east-1a"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.104.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true
  enable_s3_endpoint = true

  tags = {
    Terraform = "true"
    Environment = "dev"
    purpose = "PoC"
  }
}


