provider "aws" {
  region = var.ct_home_region
}

provider "tfe" {
  hostname = var.tfc_hostname
  token    = var.tfc_token
}

terraform {
  required_version = "1.11.4" # Needs to match TFC version

  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "cloud-factory"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.64.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "4.0.6"
    }
  }
}
