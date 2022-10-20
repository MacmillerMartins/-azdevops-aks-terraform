resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-azdevops-aks-agent"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  dns_prefix = "aks-azdevops-aks-agent"

  default_node_pool {
    name       = "agentpool"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}
