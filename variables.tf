variable "location" {
  description = "(Required) The location of the Resource Group."
}

variable "location_abbreviation" {
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
