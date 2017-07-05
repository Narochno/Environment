# Terraform Github org management

Attribues:

- Requires Github Personal Access Token
- Using just local state file for ease of use.
- Currently, branch protection is bugged: [https://github.com/terraform-providers/terraform-provider-github/pull/26](https://github.com/terraform-providers/terraform-provider-github/pull/26)

## Importing Existing Repo

Usage `terraform import <resource-id> <github repo>`

So the resource is specified in the terraform template so using the command looks like this:

`terraform import module.dapper.github_repository.repo Narochno.Dapper`

Note the `dapper` part in the resource id matches the id to be placed in the terraform template

## Usage

Add a `GITHUB_TOKEN` environment variable 

Initialize modules: `terraform get` (only needed for first time and when adding a new terraform module)
Preview changes: `terraform plan`
Commit chagnes: `terraform apply`

Always commit and push `terraform.tfstate` files after updating

Let's manage

- Descriptions
- Branch protections
- Webhooks