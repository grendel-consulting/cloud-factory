terraform {
  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "cloud-factory"
    }
  }
}