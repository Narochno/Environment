provider "github" {
  organization = "Narochno"
}

module "environment" {
    source = "repository_module",
    repository = "Environment"
    description = "Manage the Narochno Repositories with Terraform"
}

module "dapper" {
    source = "repository_module",
    repository = "Narochno.Dapper"
    description = "Unit of Work pattern with Dapper (deprecated)"
}