variable "environment" {
  type        = string
  description = "Environment"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability Zones"
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Enable NAT Gateway"
  default     = true
}

variable "enable_vpn_gateway" {
  type        = bool
  description = "Enable VPN Gateway"
  default     = false
}

variable "single_nat_gateway" {
  type        = bool
  description = "Single NAT Gateway"
  default     = true
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS Hostnames"
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "Enable DNS Support"
  default     = true
}

variable "private_subnet_tags" {
  type        = map(string)
  description = "Private Subnet Tags"
  default     = {}
}

variable "public_subnet_tags" {
  type        = map(string)
  description = "Public Subnet Tags"
  default     = {}
}

variable "create_database_subnets" {
  type        = bool
  description = "Create Database Subnets"
  default     = false
}

variable "create_private_subnets" {
  type        = bool
  description = "Create Private Subnets"
  default     = true
}

variable "create_public_subnets" {
  type        = bool
  description = "Create Public Subnets"
  default     = true
}
