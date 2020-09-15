module "vpc" {
  source  = "app.terraform.io/JECOM-training/vpc/aws"
  version = "2.51.0"
  # insert required variables here

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = "us-east-1"
  


  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
