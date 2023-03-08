output "vpc1-id" {
  value = aviatrix_vpc.spoke-transit-vpcs[0].vpc_id
}
output "routetable-numbers" {
  value = length(aviatrix_vpc.spoke-transit-vpcs[0].route_tables)
}


