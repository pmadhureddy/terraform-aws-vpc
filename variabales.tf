variable "project_name" {
    type = string
  
}

variable "environment" {
    type = string
  
}


variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  default = "true"
}

#Optional
variable "common_tags" {
  default = {}
}

variable "vpc_tags" {
  default = {}
}


#Internet Gateway

variable "igw_tags" {
  default = {}
}

#Subnet

variable "public_subnet_cidrs" {
  type = list(string)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please 2 valid and public subnet CIDR's"
  }
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidrs" {
  type = list(string)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Please 2 valid and private subnet CIDR's"
  }
}

variable "private_subnet_tags" {
  default = {}
}

variable "database_subnet_cidrs" {
  type = list(string)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Please 2 valid and database subnet CIDR's"
  }
}

variable "database_subnet_tags" {
  default = {}
}

variable "db_subnet_group_tags" {
  default = {}
  
}

variable "nat_gateways_tags" {
  default = {}
}

# Route Table

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

#Peering

variable "peering_tags" {
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = false
}
