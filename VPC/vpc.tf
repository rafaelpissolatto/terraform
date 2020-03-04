provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "XXXXXXXX-XXXXXX-Rafael"
    key    = "vpc-1.tfstate"
    region = "us-east-1"
  }
}

# =====================================VPCs=================
resource "aws_vpc" "vpc-prd" {
  cidr_block           = "${var.vpc_cidr_prd}"
  enable_dns_hostnames = "true"

  tags {
    Name = "vpc-prd"
    Env  = "prd"
  }
}

resource "aws_vpc" "vpc-dev" {
  cidr_block           = "${var.vpc_cidr_dev}"
  enable_dns_hostnames = "true"

  tags {
    Name = "vpc-dev"
    Env  = "dev"
  }
}

resource "aws_vpc" "vpc-tst" {
  cidr_block           = "${var.vpc_cidr_tst}"
  enable_dns_hostnames = "true"

  tags {
    Name = "vpc-tst"
    Env  = "tst"
  }
}

# =====================================Subnets===============
# =====================================Subnet-prd============

resource "aws_subnet" "public-subnet-prd-a" {
  cidr_block        = "${var.public_subnet_prd_a_cidr}"
  vpc_id            = "${aws_vpc.vpc-prd.id}"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags {
    Name = "public-subnet-prd-a"
    Env  = "prd"
  }
}

resource "aws_subnet" "public-subnet-prd-b" {
  cidr_block        = "${var.public_subnet_prd_b_cidr}"
  vpc_id            = "${aws_vpc.vpc-prd.id}"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"

  tags {
    Name = "public-subnet-prd-b"
    Env  = "prd"
  }
}

resource "aws_subnet" "private-subnet-prd-a" {
  cidr_block        = "${var.private_subnet_prd_a_cidr}"
  vpc_id            = "${aws_vpc.vpc-prd.id}"
  availability_zone = "us-east-1a"

  tags {
    Name = "private-subnet-prd-a"
    Env  = "prd"
  }
}

resource "aws_subnet" "private-subnet-prd-b" {
  cidr_block        = "${var.private_subnet_prd_b_cidr}"
  vpc_id            = "${aws_vpc.vpc-prd.id}"
  availability_zone = "us-east-1b"

  tags {
    Name = "private-subnet-prd-b"
    Env  = "prd"
  }
}

# =====================================Subnet-dev============
resource "aws_subnet" "public-subnet-dev-a" {
  cidr_block        = "${var.public_subnet_dev_a_cidr}"
  vpc_id            = "${aws_vpc.vpc-dev.id}"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags {
    Name = "public-subnet-dev-a"
    Env  = "dev"
  }
}

resource "aws_subnet" "public-subnet-dev-b" {
  cidr_block        = "${var.public_subnet_dev_b_cidr}"
  vpc_id            = "${aws_vpc.vpc-dev.id}"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"

  tags {
    Name = "public-subnet-dev-b"
    Env  = "dev"
  }
}

resource "aws_subnet" "private-subnet-dev-a" {
  cidr_block        = "${var.private_subnet_dev_a_cidr}"
  vpc_id            = "${aws_vpc.vpc-dev.id}"
  availability_zone = "us-east-1a"

  tags {
    Name = "private-subnet-dev-a"
    Env  = "dev"
  }
}

resource "aws_subnet" "private-subnet-dev-b" {
  cidr_block        = "${var.private_subnet_dev_b_cidr}"
  vpc_id            = "${aws_vpc.vpc-dev.id}"
  availability_zone = "us-east-1b"

  tags {
    Name = "private-subnet-dev-b"
    Env  = "dev"
  }
}

# =====================================Subnet-tst============
resource "aws_subnet" "public-subnet-tst-a" {
  cidr_block        = "${var.public_subnet_tst_a_cidr}"
  vpc_id            = "${aws_vpc.vpc-tst.id}"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags {
    Name = "public-subnet-tst-a"
    Env  = "tst"
  }
}

resource "aws_subnet" "public-subnet-tst-b" {
  cidr_block        = "${var.public_subnet_tst_b_cidr}"
  vpc_id            = "${aws_vpc.vpc-tst.id}"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"

  tags {
    Name = "public-subnet-tst-b"
    Env  = "tst"
  }
}

resource "aws_subnet" "private-subnet-tst-a" {
  cidr_block        = "${var.private_subnet_tst_a_cidr}"
  vpc_id            = "${aws_vpc.vpc-tst.id}"
  availability_zone = "us-east-1a"

  tags {
    Name = "private-subnet-tst-a"
    Env  = "tst"
  }
}

resource "aws_subnet" "private-subnet-tst-b" {
  cidr_block        = "${var.private_subnet_tst_b_cidr}"
  vpc_id            = "${aws_vpc.vpc-tst.id}"
  availability_zone = "us-east-1b"

  tags {
    Name = "private-subnet-tst-b"
    Env  = "tst"
  }
}

# =====================================RouteTable===============
# =====================================RouteTable-prd===========
resource "aws_route_table" "public-route-table-prd" {
  vpc_id = "${aws_vpc.vpc-prd.id}"

  tags {
    Name = "public-route-table-prd"
    Env  = "prd"
  }
}

resource "aws_route_table" "private-route-table-prd" {
  vpc_id = "${aws_vpc.vpc-prd.id}"

  tags {
    Name = "private-route-table-prd"
    Env  = "prd"
  }
}

# =====================================RouteTable-dev===========
resource "aws_route_table" "public-route-table-dev" {
  vpc_id = "${aws_vpc.vpc-dev.id}"

  tags {
    Name = "public-route-table-dev"
    Env  = "dev"
  }
}

resource "aws_route_table" "private-route-table-dev" {
  vpc_id = "${aws_vpc.vpc-dev.id}"

  tags {
    Name = "private-route-table-dev"
    Env  = "dev"
  }
}

# =====================================RouteTable-tst===========
resource "aws_route_table" "public-route-table-tst" {
  vpc_id = "${aws_vpc.vpc-tst.id}"

  tags {
    Name = "public-route-table-tst"
    Env  = "tst"
  }
}

resource "aws_route_table" "private-route-table-tst" {
  vpc_id = "${aws_vpc.vpc-tst.id}"

  tags {
    Name = "private-route-table-tst"
    Env  = "tst"
  }
}

# =====================================RouteTableAssiciation====
# =====================================RouteTableAssiciation-prd
resource "aws_route_table_association" "public-route-table-assciation-subnet-prd-a" {
  route_table_id = "${aws_route_table.public-route-table-prd.id}"
  subnet_id      = "${aws_subnet.public-subnet-prd-a.id}"

  depends_on = ["aws_route_table.public-route-table-prd"]
}

resource "aws_route_table_association" "public-route-table-assciation-subnet-prd-b" {
  route_table_id = "${aws_route_table.public-route-table-prd.id}"
  subnet_id      = "${aws_subnet.public-subnet-prd-b.id}"

  depends_on = ["aws_route_table.public-route-table-prd"]
}

resource "aws_route_table_association" "private-route-table-assciation-subnet-prd-a" {
  route_table_id = "${aws_route_table.private-route-table-prd.id}"
  subnet_id      = "${aws_subnet.private-subnet-prd-a.id}"

  depends_on = ["aws_route_table.private-route-table-prd"]
}

resource "aws_route_table_association" "private-route-table-assciation-subnet-prd-b" {
  route_table_id = "${aws_route_table.private-route-table-prd.id}"
  subnet_id      = "${aws_subnet.private-subnet-prd-b.id}"

  depends_on = ["aws_route_table.private-route-table-prd"]
}

# =====================================RouteTableAssiciation-dev
resource "aws_route_table_association" "public-route-table-assciation-subnet-dev-a" {
  route_table_id = "${aws_route_table.public-route-table-dev.id}"
  subnet_id      = "${aws_subnet.public-subnet-dev-a.id}"

  depends_on = ["aws_route_table.public-route-table-dev"]
}

resource "aws_route_table_association" "public-route-table-assciation-subnet-dev-b" {
  route_table_id = "${aws_route_table.public-route-table-dev.id}"
  subnet_id      = "${aws_subnet.public-subnet-dev-b.id}"

  depends_on = ["aws_route_table.public-route-table-dev"]
}

resource "aws_route_table_association" "private-route-table-assciation-subnet-dev-a" {
  route_table_id = "${aws_route_table.private-route-table-dev.id}"
  subnet_id      = "${aws_subnet.private-subnet-dev-a.id}"

  depends_on = ["aws_route_table.private-route-table-dev"]
}

resource "aws_route_table_association" "private-route-table-assciation-subnet-dev-b" {
  route_table_id = "${aws_route_table.private-route-table-dev.id}"
  subnet_id      = "${aws_subnet.private-subnet-dev-b.id}"

  depends_on = ["aws_route_table.private-route-table-dev"]
}

# =====================================RouteTableAssiciation-tst
resource "aws_route_table_association" "public-route-table-assciation-subnet-tst-a" {
  route_table_id = "${aws_route_table.public-route-table-tst.id}"
  subnet_id      = "${aws_subnet.public-subnet-tst-a.id}"

  depends_on = ["aws_route_table.public-route-table-tst"]
}

resource "aws_route_table_association" "public-route-table-assciation-subnet-tst-b" {
  route_table_id = "${aws_route_table.public-route-table-tst.id}"
  subnet_id      = "${aws_subnet.public-subnet-tst-b.id}"

  depends_on = ["aws_route_table.public-route-table-tst"]
}

resource "aws_route_table_association" "private-route-table-assciation-subnet-tst-a" {
  route_table_id = "${aws_route_table.private-route-table-tst.id}"
  subnet_id      = "${aws_subnet.private-subnet-tst-a.id}"

  depends_on = ["aws_route_table.private-route-table-tst"]
}

resource "aws_route_table_association" "private-route-table-assciation-subnet-tst-b" {
  route_table_id = "${aws_route_table.private-route-table-tst.id}"
  subnet_id      = "${aws_subnet.private-subnet-tst-b.id}"

  depends_on = ["aws_route_table.private-route-table-tst"]
}

# =====================================InternetGw====
# =====================================InternetGw-prd
resource "aws_internet_gateway" "internet-gw-prd" {
  vpc_id = "${aws_vpc.vpc-prd.id}"

  tags {
    Name = "internet-gateway-prd"
    Env  = "prd"
  }
}

# =====================================InternetGw-dev
resource "aws_internet_gateway" "internet-gw-dev" {
  vpc_id = "${aws_vpc.vpc-dev.id}"

  tags {
    Name = "internet-gateway-dev"
    Env  = "dev"
  }
}

# =====================================InternetGw-tst
resource "aws_internet_gateway" "internet-gw-tst" {
  vpc_id = "${aws_vpc.vpc-tst.id}"

  tags {
    Name = "internet-gateway-tst"
    Env  = "tst"
  }
}

# =====================================ElasticIPforNatGW====
# =====================================ElasticIPforNatGW-prd
resource "aws_eip" "elastic-ip-nat-gw-prd" {
  vpc                       = "true"
  associate_with_private_ip = "${var.elastic_ip_nat_gw_prd}"

  tags {
    Name = "elastic-ip-nat-gw-prd"
    Env  = "prd"
  }

  depends_on = ["aws_internet_gateway.internet-gw-prd"]
}

# =====================================ElasticIPforNatGW-dev
resource "aws_eip" "elastic-ip-nat-gw-dev" {
  vpc                       = "true"
  associate_with_private_ip = "${var.elastic_ip_nat_gw_dev}"

  tags {
    Name = "elastic-ip-nat-gw-dev"
    Env  = "dev"
  }

  depends_on = ["aws_internet_gateway.internet-gw-dev"]
}

# =====================================ElasticIPforNatGW-tst
resource "aws_eip" "elastic-ip-nat-gw-tst" {
  vpc                       = "true"
  associate_with_private_ip = "${var.elastic_ip_nat_gw_tst}"

  tags {
    Name = "elastic-ip-nat-gw-tst"
    Env  = "tst"
  }

  depends_on = ["aws_internet_gateway.internet-gw-tst"]
}

# =====================================NatGW================
# =====================================NatGW-prd============
resource "aws_nat_gateway" "nat-gw-prd" {
  allocation_id = "${aws_eip.elastic-ip-nat-gw-prd.id}"
  subnet_id     = "${aws_subnet.public-subnet-prd-a.id}"

  tags {
    Name = "nat-gw-prd"
  }

  depends_on = ["aws_eip.elastic-ip-nat-gw-prd"]
}

# =====================================NatGW-dev============
resource "aws_nat_gateway" "nat-gw-dev" {
  allocation_id = "${aws_eip.elastic-ip-nat-gw-dev.id}"
  subnet_id     = "${aws_subnet.public-subnet-dev-a.id}"

  tags {
    Name = "nat-gw-dev"
  }

  depends_on = ["aws_eip.elastic-ip-nat-gw-dev"]
}

# =====================================NatGW-tst============
resource "aws_nat_gateway" "nat-gw-tst" {
  allocation_id = "${aws_eip.elastic-ip-nat-gw-tst.id}"
  subnet_id     = "${aws_subnet.public-subnet-tst-a.id}"

  tags {
    Name = "nat-gw-tst"
  }

  depends_on = ["aws_eip.elastic-ip-nat-gw-tst"]
}

# =====================================NatGWRoute====
# =====================================NatGWRoute-prd
resource "aws_route" "nat-gw-route-prd" {
  route_table_id         = "${aws_route_table.private-route-table-prd.id}"
  nat_gateway_id         = "${aws_nat_gateway.nat-gw-prd.id}"
  destination_cidr_block = "0.0.0.0/0"
}

# =====================================NatGWRoute-dev
resource "aws_route" "nat-gw-route-dev" {
  route_table_id         = "${aws_route_table.private-route-table-dev.id}"
  nat_gateway_id         = "${aws_nat_gateway.nat-gw-dev.id}"
  destination_cidr_block = "0.0.0.0/0"
}

# =====================================NatGWRoute-tst
resource "aws_route" "nat-gw-route-tst" {
  route_table_id         = "${aws_route_table.private-route-table-tst.id}"
  nat_gateway_id         = "${aws_nat_gateway.nat-gw-tst.id}"
  destination_cidr_block = "0.0.0.0/0"
}

# =====================================InternetGwRoute====
# =====================================InternetGwRoute-prd
resource "aws_route" "internet-gw-route-prd" {
  route_table_id         = "${aws_route_table.public-route-table-prd.id}"
  gateway_id             = "${aws_internet_gateway.internet-gw-prd.id}"
  destination_cidr_block = "0.0.0.0/0"

  depends_on = ["aws_route_table.public-route-table-prd"]
}

# =====================================InternetGwRoute-dev
resource "aws_route" "internet-gw-route-dev" {
  route_table_id         = "${aws_route_table.public-route-table-dev.id}"
  gateway_id             = "${aws_internet_gateway.internet-gw-dev.id}"
  destination_cidr_block = "0.0.0.0/0"

  depends_on = ["aws_route_table.public-route-table-dev"]
}

# =====================================InternetGwRoute-tst
resource "aws_route" "internet-gw-route-tst" {
  route_table_id         = "${aws_route_table.public-route-table-tst.id}"
  gateway_id             = "${aws_internet_gateway.internet-gw-tst.id}"
  destination_cidr_block = "0.0.0.0/0"

  depends_on = ["aws_route_table.public-route-table-tst"]
}
