resource "keycloak_group" "grafana_admins" {
  realm_id = keycloak_realm.prod.id
  name     = "grafana-admins"
}

resource "keycloak_group" "grafana_viewers" {
  realm_id = keycloak_realm.prod.id
  name     = "grafana-viewers"
}
