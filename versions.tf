provider "aws" {
  region = var.ct_home_region
}

provider "tfe" {
  hostname = var.tfc_hostname
  token    = var.tfc_token
}

terraform {
  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "cloud-factory"
    }
  }
}