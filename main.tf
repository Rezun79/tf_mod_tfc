resource "tfe_workspace" "tfc_workspace" {
  name         = local.rg_name
  organization = local.tfc_organization_name
  vcs_repo {
    identifier = "${local.github_organization}/${local.rg_name}"
    oauth_token_id = local.tfc_github_oauth_token_id
  }
  tag_names    = ["${local.rg_name}"]
}

resource "tfe_variable" "client_secret" {
  key          = "client_secret"
  value        = local.secret
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.tfc_workspace.id
  description  = "SPN Secret"
}