resource "keycloak_role" "editor" {
  realm_id = keycloak_realm.prod.id
  name     = "editor"
}

resource "keycloak_role" "viewer" {
  realm_id = keycloak_realm.prod.id
  name     = "viewer"
}
