module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ayitobed+smefirstaft@amazon.com"
    AccountName               = "SME-First-AFT-Account"
    ManagedOrganizationalUnit = "AFT-Accounts"
    SSOUserEmail              = "ayitobed+smefirstaft@amazon.com"
    SSOUserFirstName          = "SME First AFT"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Another Tag" = "TestAccount"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
