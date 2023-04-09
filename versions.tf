provider "aws" {
  region = var.ct_home_region
}

provider "tfe" {
  hostname = var.tfc_hostname
  token    = var.tfc_token
}

terraform {
  required_version = "1.4.4" # Needs to match TFC version

  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "cloud-factory"
    }
  }

  required_providers {
    aws = {
      source  = "integrations/aws"
      version = "4.62.0"
    }

    tfe = {
      source  = "integrations/tfe"
      version = "0.43.0"
    }

    tls = {
      source  = "integrations/tls"
      version = "4.0.4"
    }
  }
}