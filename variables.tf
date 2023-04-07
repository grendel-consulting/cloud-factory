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
}

variable "tf_backend_secondary_region" {
  type        = string
  description = "AWS Region where Terraform backend will be backed up"
}
