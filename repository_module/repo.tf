resource "github_repository" "repo" {
  name        = "${var.repository}"
  description = "${var.description}"
}

resource "github_repository_webhook" "slack_webhook" {
  repository = "${github_repository.repo.name}"

  name = "web"

  configuration {
    url          = "https://hooks.slack.com/services/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"
    content_type = "application/json"
    insecure_ssl = false
  }

  active = true

  events = ["commit_comment", "create", "delete", "deployment_status", "fork", "issues", "issue_comment", "pull_request", "pull_request_review", "pull_request_review_comment", "push", "release"]
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