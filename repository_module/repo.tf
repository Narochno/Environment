resource "github_repository" "repo" {
  name        = "${var.repository}"
  description = "${var.description}"
}
/*
resource "github_branch_protection" "repo_master" {
  repository = "${var.repository}"
  branch = "master"

  required_status_checks {
    include_admins = true
    strict = false
    contexts = ["continuous-integration/appveyor/pr"]
  }

  required_pull_request_reviews {
    include_admins = true
  }
}*/