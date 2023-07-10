variable "environment" {
  type        = string
  description = "Specifies the Environment value (prod, qa, dev)."
}

variable "workload_name" {
  type        = string
  description = "Specifies the workload name"
}

variable "location" {
  type        = string
  description = "The location of the Resource Group."
}

variable "location_abbreviation" {
  type        = string
  description = "The abbreviation of the location used in the Resource Group name."
}

variable "sku_size" {
  type        = string
  description = "The SKU size of the App Service Plan"
}

variable "sku_tier" {
  type        = string
  description = "The SKU tier of the App Service Plan"
}

variable "account_tier" {
  type        = string
  description = "The Account Tier to use for the Storage Account."
}

variable "account_replication_type" {
  type        = string
  description = "The replication type to use for the Storage Account."
}
