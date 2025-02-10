terraform {
  required_providers {
    keycloak = {
      source = "keycloak/keycloak"
    }
  }
}

variable "keycloak_password" {}

provider "keycloak" {
  client_id = "admin-cli"
  url       = "https://keycloak.sikademo.com"
  username  = "admin"
  password  = var.keycloak_password
}
