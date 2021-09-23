####################################################################

provider "aviatrix" {
  username = "admin"
  controller_ip = "3.124.26.3"
  password = "@Aviatrix123#"
}

terraform {
    required_providers {
      aviatrix = {
            source  = "aviatrixsystems/aviatrix"
            version = "2.20"
        }
    }
}

####################################################################

module "spoke_aws_1" {
  source  = "terraform-aviatrix-modules/aws-spoke/aviatrix"
  version = "4.0.3"
  name            = "App1"
  cidr            = "10.1.0.0/20"
  region          = "eu-west-1"
  account         = "remote-account"
}
