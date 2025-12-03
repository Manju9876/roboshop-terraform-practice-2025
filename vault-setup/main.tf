provider "vault" {
   address = "http://vault.devopsbymanju.shop:8200"
  token = var.vault_token
}

variable "vault_token" {}

data "vault_generic_secret" "sample" {
  path = "test/data/demo"
}
