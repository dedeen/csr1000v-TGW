# VPC parms, can build mutiple by passing in via this map 
variable "app_vpcs" {
	description = "VPC Variables"
	type		= map(any)

	default = {
		vpc104 = {		
			map_key			= 	"vpc104"
			region_dc		= 	"VPC-104"
			cidr			= 	"10.104.0.0/16"
			az_list			= 	["us-west-2a","us-west-2a","us-west-2b","us-west-2b"]
			vpc_subnets		= 	["10.104.0.0/24","10.104.1.0/24","10.104.128.0/24","10.104.129.0/24"]
			subnet_names		= 	["vpc104-az1-pub","vpc104-az1-priv","vpc104-az2-pub","vpc104-az2-priv"]
		},
		vpc105 = {		
			map_key			= 	"vpc105"
			region_dc		= 	"VPC-105"
			cidr			= 	"10.105.0.0/16"
			az_list			= 	["us-west-2a","us-west-2a","us-west-2b","us-west-2b"]
			vpc_subnets		= 	["10.105.0.0/24","10.105.1.0/24","10.105.128.0/24","10.105.129.0/24"]
			subnet_names		= 	["vpc105-az1-pub","vpc105-az1-priv","vpc105-az2-pub","vpc105-az2-priv"]
		},
		
	}   
}

