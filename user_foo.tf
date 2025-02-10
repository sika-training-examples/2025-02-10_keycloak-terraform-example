resource "keycloak_user" "foo" {
  for_each = local.realms

  realm_id = each.value
  username = "foo"
  enabled  = true

  email          = "foo@example.com"
  email_verified = true
  first_name     = "Foo"
  last_name      = "Sika"

  required_actions = [
    "VERIFY_EMAIL",
  ]
}

resource "smtp_send_mail" "foo" {
  for_each = local.realms

  to      = [keycloak_user.foo[each.key].email]
  from    = "sso@example.com"
  subject = "New SSO User"
  body    = "https://keycloak.sikademo.com/realms/${each.key}/login-actions/reset-credentials"
}
