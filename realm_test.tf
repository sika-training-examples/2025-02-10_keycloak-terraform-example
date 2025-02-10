resource "keycloak_realm" "test" {
  realm                  = "test"
  enabled                = true
  display_name           = "SSO TEST"
  reset_password_allowed = true
  login_theme            = "ondrejsika"
  verify_email           = true
  smtp_server {
    host = "maildev-smtp.example-keycloak"
    port = "25"
    from = "sso-test@sikademo.com"
  }
}
