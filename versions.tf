provider "aws" {
  region = var.ct_home_region
}

provider "tfe" {
  hostname = var.tfc_hostname
  token    = var.tfc_token
}

terraform {
  required_version = "1.12.2" # Needs to match TFC version

  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "cloud-factory"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.66.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "4.1.0"
    }
  }
}
