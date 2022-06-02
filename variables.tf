# variable "token" {
#   type = string
#   sensitive = true
# }

variable "tfc_organization_name" {
  type = string
}

variable "github_organization" {
  type = string
  default = null
}
variable "tfc_github_oauth_token_id" {
  type = string
  default = null
}

variable "secret" {
}

variable "client_id" {
}

variable "rg_name" {
}
