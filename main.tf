module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = var.vpc_name

  cidr                 = var.vpc_cidr
  azs                  = [for v in var.availability_zones : v]
  database_subnets     = var.create_database_subnets ? [for k, v in var.availability_zones : cidrsubnet(var.vpc_cidr, 8, k + 20)] : []
  private_subnets      = var.create_private_subnets ? [for k, v in var.availability_zones : cidrsubnet(var.vpc_cidr, 8, k + 10)] : []
  public_subnets       = var.create_public_subnets ? [for k, v in var.availability_zones : cidrsubnet(var.vpc_cidr, 8, k)] : []
  enable_nat_gateway   = var.enable_nat_gateway
  enable_vpn_gateway   = var.enable_vpn_gateway
  single_nat_gateway   = var.single_nat_gateway
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  private_subnet_tags = var.private_subnet_tags
  public_subnet_tags  = var.public_subnet_tags
}
