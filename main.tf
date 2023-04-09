module "factory" {
  source = "github.com/grendel-consulting/terraform-aws-control_tower_account_factory"

  aft_framework_repo_url     = "https://github.com/grendel-consulting/terraform-aws-control_tower_account_factory.git"
  aft_framework_repo_git_ref = "main"
  terraform_distribution     = "tfc"
  terraform_org_name         = "grendel-consulting"
  terraform_token            = var.terraform_token
  terraform_version          = "1.4.4"

  ct_management_account_id    = var.ct_management_account_id
  log_archive_account_id      = var.log_archive_account_id
  audit_account_id            = var.audit_account_id
  aft_management_account_id   = var.aft_management_account_id
  ct_home_region              = var.ct_home_region
  tf_backend_secondary_region = var.tf_backend_secondary_region

  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_owner}/cloud-factory-requests"
  account_provisioning_customizations_repo_name = "${var.github_owner}/cloud-factory-provisioning"
  global_customizations_repo_name               = "${var.github_owner}/cloud-factory-baseline"
  account_customizations_repo_name              = "${var.github_owner}/cloud-factory-customisations"

  aft_feature_delete_default_vpcs_enabled = true
  aft_vpc_endpoints                       = false
}
