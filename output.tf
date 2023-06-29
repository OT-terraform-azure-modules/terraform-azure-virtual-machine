output "nic_id" {
  value       = azurerm_network_interface.nic.id
}

output "nic_name" {
  value       = azurerm_network_interface.nic.name
}


output "vm_private_ip" {
  value       = azurerm_network_interface.nic.private_ip_address
}

output "vm_id" {
  value       = azurerm_virtual_machine.vm.id
}
