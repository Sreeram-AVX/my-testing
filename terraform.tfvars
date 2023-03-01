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
  ,
  {
    type                 = 1
    acc-name             = "Sree-AWS"
    reg                  = "ap-northeast-1"
    vpc-name             = "spoke-2-vpc"
    cidr_bl              = "10.100.2.0/24"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
  }
   ,
  {
    type                 = 1
    acc-name             = "Sree-AWS"
    reg                  = "ap-northeast-1"
    vpc-name             = "spoke-3-vpc"
    cidr_bl              = "10.100.3.0/24"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
  }
]
gw_config = [ 
  {
  cloud_type        = 1
  account_name      = "Sree-AWS"
  gw_name           = "tf-spoke-gateway1-aws"
  vpc_id            = "vpc-0a24bf05d5e46f204"
  vpc_reg           = "ap-northeast-1"
  gw_size           = "t2.micro"
  subnet            = "10.100.1.48/28"
  single_ip_snat    = false
  manage_ha_gateway = false
  tags         = {  }
} 
,
{
  cloud_type        = 1
  account_name      = "Sree-AWS"
  gw_name           = "tf-spoke-gateway2-aws"
  vpc_id            = "vpc-08fcbb27367214189"
  vpc_reg           = "ap-northeast-1"
  gw_size           = "t2.micro"
  subnet            = "10.100.2.48/28"
  single_ip_snat    = false
  manage_ha_gateway = false
    tags         = { }
}
]

gw_tags =[
  {
    name = "tf-spoke-gateway1-aws"
  }
  ,
  {
    name = "tf-spoke-gateway1-aws"
  }
]
