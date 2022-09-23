terraform { 

required_version = ">= 0.13" 

 

required_providers { 

flexibleengine = { 

    source = "FlexibleEngineCloud/flexibleengine" 
    version = ">= 1.31.0" 

        } 
    } 
 } 


variable "subnet_cidr"{ 

 description ="subnet_cidr_devops" 

} 

provider "flexibleengine" { 
    access_key= "GECD1WUSF835B4GCSK08" 
    #add from Console under Cred 
    secret_key= "NlzP7BMOlfKbZKbieuvUnGXTsWp1g56DPwi9zmGe" 
    domain_name = "OCB0005121" 
    #tenant name 
    auth_url = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3" 
    region = "eu-west-0" 
} 

resource "flexibleengine_networking_router_v2" "VPC_1_helmi" { 

name = "Devops-VPC-helmi" 
admin_state_up = "true" 

} 

resource "flexibleengine_networking_network_v2" "network_1_helmi" { 

name  = "Devops-network-helmi" 
admin_state_up = "true" 

} 

resource "flexibleengine_networking_subnet_v2" "subnet_1_helmi" { 

name  = "Devops-subnet-helmi" 
cidr  = var.subnet_cidr 

network_id = flexibleengine_networking_network_v2.network_1_helmi.id 
} 

resource "flexibleengine_networking_router_interface_v2" "flexibleengine_VPC_helmi" { 

router_id = flexibleengine_networking_router_v2.VPC_1_helmi.id 
subnet_id = flexibleengine_networking_subnet_v2.subnet_1_helmi.id 

} 