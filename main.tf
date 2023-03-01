# Creating an Aviatrix AWS Spoke VPC/AWS Transit VPC
resource "aviatrix_vpc" "spoke-transit-vpcs" {
  count = length(var.vpc_config)
  cloud_type           = var.vpc_config[count.index]["type"]
  account_name         = var.vpc_config[count.index]["acc-name"]
  region               = var.vpc_config[count.index]["reg"]
  name                 = var.vpc_config[count.index]["vpc-name"]
  cidr                 = var.vpc_config[count.index]["cidr_bl"]
  aviatrix_transit_vpc = var.vpc_config[count.index]["aviatrix_transit_vpc"]
  aviatrix_firenet_vpc = var.vpc_config[count.index]["aviatrix_firenet_vpc"]
}

# Creating an Aviatrix AWS Spoke Gateway
resource "aviatrix_spoke_gateway" "tf-spoke-gateway" {
  count = length(var.gw_config)
  cloud_type        = var.gw_config[count.index]["cloud_type"]
  account_name      = var.gw_config[count.index]["account_name"]
  gw_name           = var.gw_config[count.index]["gw_name"]
  vpc_id            = var.gw_config[count.index]["vpc_id"]
  vpc_reg           = var.gw_config[count.index]["vpc_reg"]
  gw_size           = var.gw_config[count.index]["gw_size"]
  subnet            = var.gw_config[count.index]["subnet"]
  single_ip_snat    = var.gw_config[count.index]["single_ip_snat"]
  manage_ha_gateway = var.gw_config[count.index]["manage_ha_gateway"]
  tags              = var.gw_config[count.index]["tags"] 
  
}

