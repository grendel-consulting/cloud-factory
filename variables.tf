variable "ct_management_account_id" {
  type        = string
  description = "AWS Account responsible for management of AWS Control Tower"
  sensitive   = true
}

variable "log_archive_account_id" {
  type        = string
  description = "AWS Account responsible for log consolidaion for AWS Control Tower"
  sensitive   = true
}

variable "audit_account_id" {
  type        = string
  description = "AWS Account responsible for auditing for AWS Control Tower"
  sensitive   = true
}

variable "aft_management_account_id" {
  type        = string
  description = "AWS Account responsible for management of Account Factory"
  sensitive   = true
}

variable "github_owner" {
  type        = string
  description = "GitHub Organisation or Username owning the repositories"
}

variable "ct_home_region" {
  type        = string
  description = "AWS Region where AWS Control Tower is deployed"
  default     = "eu-west-1"
}

variable "tf_backend_secondary_region" {
  type        = string
  description = "AWS Region where Terraform backend will be backed up"
}

variable "tfc_hostname" {
  type        = string
  description = "Hostname of the TFC (or TFE) instance to use with AWS"
  default     = "app.terraform.io"
}

variable "tfc_organisation_name" {
  type        = string
  description = "Name of your Terraform Cloud organisation"
  default     = "grendel-consulting"
}

variable "tfc_project_name" {
  type        = string
  description = "Project under which the workspace exists"
  default     = "Default Project"
}

variable "tfc_workspace_name" {
  type        = string
  description = "Name of the Workspace that will connect to AWS"
  default     = "cloud-factory"
}

variable "tfc_aws_audience" {
  type        = string
  description = "Audience value to use in run identity tokens"
  default     = "aws.workload.identity"
}

variable "tfc_token" {
  type        = string
  description = "Authentication token for TFC (or TFE)"
  sensitive   = true
}

variable "STEAMPIPE_ACCOUNT_ID" {
  type        = string
  description = "AWS Account ID for the Steampipe Cloud environment, from Terraform Cloud"
}

variable "STEAMPIPE_EXTERNAL_ID" {
  type        = string
  description = "External ID for the Steampipe Cloud environment, from Terraform Cloud"
  sensitive   = true
}
