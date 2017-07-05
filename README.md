# Terraform Github org management

Attribues:

- Requires Github Personal Access Token
- Using just local state file for ease of use.
- Currently, branch protection is bugged: [https://github.com/terraform-providers/terraform-provider-github/pull/26](https://github.com/terraform-providers/terraform-provider-github/pull/26)

## Importing Existing Repo

Usage `terraform import <resource-id> <github repo>`

So the resource is specified in the terraform template so using the command looks like this:

`terraform import module.dapper.github_repository.repo Narochno.Dapper`

## Usage

Add a `GITHUB_TOKEN` environment variable 

Preview changes: `terraform plan`
Commit chagnes: `terraform apply`

Always commit and push `terraform.tfstate` files after updating

Let's manage

- Descriptions
- Branch protections
- Webhooks