output "nic_id" {
  value       = azurerm_network_interface.nic.id
}


output "vm_pub_ip" {
  value       = azurerm_network_interface.nic.private_ip_address
}

