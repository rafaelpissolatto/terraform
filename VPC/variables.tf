variable "region" {
  description = "aws-region"
  default     = "us-east-1"
}

# =======vpc=============

# =======vpc-prd=========
variable "vpc_cidr_prd" {
  description = "vpc-cidr-prd"
  default     = "10.101.0.0/16"
}
# ========pc-dev=========
variable "vpc_cidr_dev" {
  description = "vpc-cidr-dev"
  default     = "10.102.0.0/16"
}
# ========vpc-tst=========
variable "vpc_cidr_tst" {
  description = "vpc-cidr-tst"
  default     = "10.103.0.0/16"
}
# =======subnet==========

variable "public_subnet_prd_a_cidr" {
  description = "public-subnet-prd-a-cidr"
  default     = "10.101.11.0/24"
}

variable "public_subnet_prd_b_cidr" {
  description = "public-subnet-prd-b-cidr"
  default     = "10.101.12.0/24"
}

variable "private_subnet_prd_a_cidr" {
  description = "public-subnet-prd-a-cidr"
  default     = "10.101.21.0/24"
}

variable "private_subnet_prd_b_cidr" {
  description = "private-subnet-prd-b-cidr"
  default     = "10.101.22.0/24"
}

# =====================================subnet-dev============
variable "public_subnet_dev_a_cidr" {
  description = "public-subnet-dev-a-cidr"
  default     = "10.102.11.0/24"
}

variable "public_subnet_dev_b_cidr" {
  description = "public-subnet-dev-b-cidr"
  default     = "10.102.12.0/24"
}

variable "private_subnet_dev_a_cidr" {
  description = "public-subnet-dev-a-cidr"
  default     = "10.102.21.0/24"
}

variable "private_subnet_dev_b_cidr" {
  description = "private-subnet-dev-b-cidr"
  default     = "10.102.22.0/24"
}

# =====================================subnet-tst============
variable "public_subnet_tst_a_cidr" {
  description = "public-subnet-tst-a-cidr"
  default     = "10.103.11.0/24"
}

variable "public_subnet_tst_b_cidr" {
  description = "public-subnet-tst-b-cidr"
  default     = "10.103.12.0/24"
}

variable "private_subnet_tst_a_cidr" {
  description = "private-subnet-tst-a-cidr"
  default     = "10.103.21.0/24"
}

variable "private_subnet_tst_b_cidr" {
  description = "private-subnet-tst-b-cidr"
  default     = "10.103.22.0/24"
}

# =====================================elastic-ip============
# =====================================elastic-ip-prd========
variable "elastic_ip_nat_gw_prd" {
  default     = "10.101.11.5"
  description = "elastic-ip-nat-gw-prd"
}
# =====================================elastic-ip-dev========
variable "elastic_ip_nat_gw_dev" {
  default     = "10.102.11.5"
  description = "elastic-ip-nat-gw-dev"
}
# =====================================elastic-ip-tst========
variable "elastic_ip_nat_gw_tst" {
  default     = "10.103.12.5"
  description = "elastic-ip-nat-gw-tst"
}
