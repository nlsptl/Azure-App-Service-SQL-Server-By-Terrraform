output keyname {
  value       = data.azurerm_key_vault.keyvault.name
  sensitive   = false
  description = "description"
  depends_on  = []
}

output keysecrete {
  value       = data.azurerm_key_vault_secret.admin_pass.value
  sensitive   = false
  description = "description"
  depends_on  = []
}
