variable "location" {
  description = "Azure region"
  type        = string
}

variable "environment" {
  description = "Environment name (devel/stage/prod)"
  type        = string
}

variable "client_id" {
  description = "Azure Client ID"
  default     = null
}

variable "client_secret" {
  description = "Azure Client Secret"
  default     = null
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  default     = null
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  default     = null
}