resource "aws_vpn_gateway" "vpn_gateway" {
  vpc_id = aviatrix_vpc.spoke-transit-vpcs[0].vpc_id
  depends_on = [
   aviatrix_vpc.spoke-transit-vpcs
  ] 
}

resource "aws_vpn_gateway_route_propagation" "customer-vpc" {
   depends_on = [
    aviatrix_vpc.spoke-transit-vpcs,aws_vpn_gateway.vpn_gateway
  ]
  count = length(aviatrix_vpc.spoke-transit-vpcs[0].route_tables)
  vpn_gateway_id = aws_vpn_gateway.vpn_gateway.id
  route_table_id = aviatrix_vpc.spoke-transit-vpcs[0].route_tables[count.index]
}
