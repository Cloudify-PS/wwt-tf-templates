resource "github_repository" "repo" {
  name        = "${var.app_name}-repository"

  visibility = "public"

  template {
    owner      = "marrowne"
    repository = "wwt-tf-templates"
  }
}

resource "github_actions_secret" "app_name" {
  repository       = github_repository.repo.name
  secret_name      = "app_name"
  plaintext_value  = var.app_name
}

resource "github_actions_secret" "cloudify_host" {
  repository       = github_repository.repo.name
  secret_name      = "cloudify_host"
  plaintext_value  = var.cloudify_host
}

resource "github_actions_secret" "cloudify_user" {
  repository       = github_repository.repo.name
  secret_name      = "cloudify_username"
  plaintext_value  = var.cloudify_user
}

resource "github_actions_secret" "cloudify_password" {
  repository       = github_repository.repo.name
  secret_name      = "cloudify_password"
  plaintext_value  = var.cloudify_password
}

resource "github_actions_secret" "cloudify_ssl" {
  repository       = github_repository.repo.name
  secret_name      = "cloudify_ssl"
  plaintext_value  = "false"
}

resource "github_actions_secret" "cloudify_ssl_trust_all" {
  repository       = github_repository.repo.name
  secret_name      = "cloudify_ssl_trust_all"
  plaintext_value  = "true"
}

resource "github_actions_secret" "cloudify_tenant" {
  repository       = github_repository.repo.name
  secret_name      = "cloudify_tenant"
  plaintext_value  = "default_tenant"
}

resource "github_actions_secret" "aws_deployment_id" {
  repository       = github_repository.repo.name
  secret_name      = "aws_eaas_deployment_id"
  plaintext_value  = "wwt-eaas-poc-aws"
}

resource "github_actions_secret" "gcp_deployment_id" {
  repository       = github_repository.repo.name
  secret_name      = "gcp_eaas_deployment_id"
  plaintext_value  = "wwt-eaas-poc-gcp"
}