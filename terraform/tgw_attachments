#  Create TGW Attachments in each az of VPCs 104 and 105
# 
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc104-att" {
  subnet_ids              = [module.vpc["vpc104"].intra_subnets[1],module.vpc["vpc104"].intra_subnets[3]]
  transit_gateway_id      = tgw-07c688d56f372d1b4
  vpc_id                  = module.vpc["vpc104"].vpc_id
  appliance_mode_support  = "enable"                            # prevents asymm flows between consumer VPC and security VPC
  dns_support             = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags = {
    Owner = "dan-via-terraform"
    Name  = "TGW-vpc104-att"
  }  
}
