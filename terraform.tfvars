vpc_config = [
  {
    type                 = 1
    acc-name             = "Sree-AWS"
    reg                  = "ap-northeast-1"
    vpc-name             = "spoke-1-vpc"
    cidr_bl              = "10.100.1.0/24"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
  }
]
gw_config = [ 
  {
  cloud_type        = 1
  account_name      = "Sree-AWS"
  gw_name           = "tf-spoke-gateway1-aws"
  #vpc_id            = "vpc-043a50ebd39741383"
  vpc_reg           = "ap-northeast-1"
  gw_size           = "t2.micro"
  subnet            = "10.100.1.48/28"
  single_ip_snat    = false
  manage_ha_gateway = false
  tags         = { 
  name = "tf-spoke-gateway1-aws"
    }
} 
]

