provider "vault" {
   address = "https://vault.devopsbymanju.shop:8200"
}

data "vault_generic_secret" "sample" {
  path = "test/data/demo"
}
