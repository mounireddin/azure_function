variable "location" {
  type        = string
  description = "(Required) The location of the Resource Group."
}

variable "location_abbreviation" {
  type        = string
  description = "(Required) The abbreviation of the location used in the Resource Group name."
}

variable "sku_size" {
  type        = string
  description = "value"
}

variable "sku_tier" {
  type        = string
  description = "value"
}

variable "environment" {
  type        = string
  description = "(Required) Specifies the Environment value (prod, qa, dev)."
  validation {
    condition     = contains(["prod", "qa", "dev"], var.environment)
    error_message = "Invalid environment parameter."
  }
}

variable "workload_name" {
  type        = string
  description = "value"
}

variable "account_tier" {
  type        = string
  description = "value"
}

variable "account_replication_type" {
  type        = string
  description = "value"
}
