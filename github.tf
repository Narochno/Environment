provider "github" {
  organization = "Narochno"
}

module "dapper" {
    source = "repository_module",
    repository = "Narochno.Dapper"
    description = "Test"
}