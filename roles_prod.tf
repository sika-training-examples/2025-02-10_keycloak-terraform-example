resource "keycloak_role" "editor" {
  realm_id = keycloak_realm.prod.id
  name     = "editor"
}

resource "keycloak_role" "viewer" {
  realm_id = keycloak_realm.prod.id
  name     = "viewer"
}

resource "keycloak_role" "admin" {
  realm_id = keycloak_realm.prod.id
  name     = "admin"

  composite_roles = [
    keycloak_role.editor.id,
    keycloak_role.viewer.id,
  ]
}
