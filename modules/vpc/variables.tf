variable "name_preffix" {
  description = "Name preffix for resources on AWS"
  type = string
}

# VPC
variable "vpc_cidr_block" {
  description = "AWS VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

# Subnets
variable "availability_zones" {
  type        = list
  description = "List of availability zones to be used by subnets"
}

variable "public_subnets_cidrs_per_availability_zone" {
  type        = list
  description = "List of CIDRs to use on each availability zone for public subnets"
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnets_cidrs_per_availability_zone" {
  type        = list
  description = "List of CIDRs to use on each availability zone for private subnets"
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_db_subnets_cidrs_per_availability_zone" {
  type        = list
  description = "List of CIDRs to use on each availability zone for private subnets"
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}
