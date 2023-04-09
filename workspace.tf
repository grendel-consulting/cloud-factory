data "tfe_workspace" "target" {
  name         = var.tfc_workspace_name
  organization = var.tfc_organisation_name
}

resource "tfe_variable" "enable_aws_provider_auth" {
  workspace_id = data.tfe_workspace.target.id

  key      = "TFC_AWS_PROVIDER_AUTH"
  value    = "true"
  category = "env"

  description = "Enable the Workload Identity integration for AWS."
}

resource "tfe_variable" "tfc_aws_role_arn" {
  workspace_id = data.tfe_workspace.target.id

  key      = "TFC_AWS_RUN_ROLE_ARN"
  value    = aws_iam_role.tfc_role.arn
  category = "env"

  description = "Specific the AWS Role ARN that runs will use to authenticate."
}