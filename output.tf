output "vpc1-id" {
  value = aviatrix_vpc.spoke-transit-vpcs[0].vpc_id
}
output "vpc2-id" {
  value = aviatrix_vpc.spoke-transit-vpcs[1].vpc_id
}
output "vpc3-id" {
  value = aviatrix_vpc.spoke-transit-vpcs[2].vpc_id
}

