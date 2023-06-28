resource "azurerm_public_ip" "example" {
  name                    = var.pubip_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  allocation_method       = "Static"
  idle_timeout_in_minutes = 30

  tags = var.tagMap
}


resource "azurerm_network_interface" "nic" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = var.name
    subnet_id                     = var.nic_ip_configuration_subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.pubip_name == "" ? null : azurerm_public_ip.example.id 
  }
}
