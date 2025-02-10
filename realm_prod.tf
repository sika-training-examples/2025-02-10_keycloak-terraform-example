resource "keycloak_realm" "prod" {
  realm                  = "prod"
  enabled                = true
  display_name           = "SSO PROD"
  reset_password_allowed = true
  login_theme            = "sika-io"
  smtp_server {
    host = "maildev-smtp.example-keycloak"
    port = "25"
    from = "sso-prod@sikademo.com"
  }
}
