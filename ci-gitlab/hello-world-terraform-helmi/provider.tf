terraform {

  required_version = ">= 0.13"

  required_providers {

    flexibleengine = {

      source = "FlexibleEngineCloud/flexibleengine"

      version = ">= 1.31.0"

    }

  }

}

provider "flexibleengine" {
  access_key  = "M0WLCNTI1HZVOWDHXGBV"
  secret_key  = "pqNg2dJvY4ERgj1mCwYUtno2axyXCFMdAc8V3fsh"
  domain_name = "OCB0005121"
  #tenant name 
  auth_url = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3"
  region   = "eu-west-0"

} 
