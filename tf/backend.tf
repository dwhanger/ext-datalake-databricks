terraform {
  backend "azurerm" {
#devintus
    key                   = "devintus-stack"
    container_name        = "databricks"
    storage_account_name  = "<storage acct name>"
    access_key            = "<storage account key>"
#qaus
#    key                   = "qaus-stack"
#
#   >> To list all Env variables:
#   >>  Get-ChildItem Env:
#   >>
#
#devintus
#qa
    resource_group_name   = "terraform-sc-rg"
    subscription_id       = "<sub id>"
    client_id             = "<client id>"
    client_secret         = "<client secret>"
    tenant_id             = "<tenant id>"
  }
}



#
# set the TF_VARS_access_key environment variable to set the access key...don't put it here...
# powershell commands:
#   >> Set-Location Env:
#   >> $Env:TF_VARS_access_key="<the key for the storage account>"
#   >> Get-Content -Path TF_VARS_access_key
#
#   >> To list all Env variables:
#   >>  Get-ChildItem Env:
#   >>
