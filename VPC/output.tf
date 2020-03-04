# vpc id =====================================================

output "vcp_id_prd" {
  value = "${aws_vpc.vpc-prd.id}"
}

output "vcp_id_dev" {
  value = "${aws_vpc.vpc-dev.id}"
}

output "vcp_id_tst" {
  value = "${aws_vpc.vpc-tst.id}"
}

# vpc cidr ===================================================
output "vpc_cidr_block_prd" {
  value = "${aws_vpc.vpc-prd.cidr_block}"
}

output "vpc_cidr_block_dev" {
  value = "${aws_vpc.vpc-dev.cidr_block}"
}

output "vpc_cidr_block_tst" {
  value = "${aws_vpc.vpc-tst.cidr_block}"
}

# subnet id public=============================================
output "public_subnet_prd_a_id" {
  value = "${aws_subnet.public-subnet-prd-a.id}"
}

output "public_subnet_prd_b_id" {
  value = "${aws_subnet.public-subnet-prd-b.id}"
}

output "public_subnet_dev_a_id" {
  value = "${aws_subnet.public-subnet-dev-a.id}"
}

output "public_subnet_dev_b_id" {
  value = "${aws_subnet.public-subnet-dev-b.id}"
}

output "public_subnet_tst_a_id" {
  value = "${aws_subnet.public-subnet-tst-a.id}"
}

output "public_subnet_tst_b_id" {
  value = "${aws_subnet.public-subnet-tst-b.id}"
}

# subnet id private=============================================
output "private_subnet_prd_a_id" {
  value = "${aws_subnet.private-subnet-prd-a.id}"
}

output "private_subnet_prd_b_id" {
  value = "${aws_subnet.private-subnet-prd-b.id}"
}

output "private_subnet_dev_a_id" {
  value = "${aws_subnet.private-subnet-dev-a.id}"
}

output "private_subnet_dev_b_id" {
  value = "${aws_subnet.private-subnet-dev-b.id}"
}

output "private_subnet_tst_a_id" {
  value = "${aws_subnet.private-subnet-tst-a.id}"
}

output "private_subnet_tst_b_id" {
  value = "${aws_subnet.private-subnet-tst-b.id}"
}

# nat gwe=======================================================
output "ip_nat_gw_prd" {
  value = "${aws_eip.elastic-ip-nat-gw-prd.public_ip}"
}

output "ip_nat_gw_dev" {
  value = "${aws_eip.elastic-ip-nat-gw-dev.public_ip}"
}

output "ip_nat_gw_tst" {
  value = "${aws_eip.elastic-ip-nat-gw-tst.public_ip}"
}

# routetable=======================================================
output "public_route_table_prd" {
  value = "${aws_route_table.public-route-table-prd.id}"
}

output "public_route_table_dev" {
  value = "${aws_route_table.public-route-table-dev.id}"
}

output "public_route_table_tst" {
  value = "${aws_route_table.public-route-table-tst.id}"
}
