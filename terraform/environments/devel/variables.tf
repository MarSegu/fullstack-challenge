variable "environment" {
  type = string
}

variable "project_name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "client_id" {
  default = null
  type = string
}

variable "subscription_id" {
  default = null
  type = string
}

variable "client_secret" {
  default = null
  type = string
}

variable "tenant_id" {
  default = null
  type = string
}