resource "keycloak_realm" "test" {
  realm                  = "test"
  enabled                = true
  display_name           = "SSO TEST"
  reset_password_allowed = true
  smtp_server {
    host = "maildev-smtp.example-keycloak"
    port = "25"
    from = "sso-test@sikademo.com"
  }
}
