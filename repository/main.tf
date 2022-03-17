resource "github_repository" "repo" {
  name        = "${var.app_name}-repository"

  visibility = "private"

  template {
    owner      = "Cloudify-PS"
    repository = "wwt-tf-templates"
  }
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
  plaintext_value  = "true"
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
  secret_name      = "aws_tf_deployment_id"
  plaintext_value  = "aws-nginx-dev-0"
}

resource "github_actions_secret" "gcp_deployment_id" {
  repository       = github_repository.repo.name
  secret_name      = "gcp_tf_deployment_id"
  plaintext_value  = "gcp-nginx-dev-0"
}
