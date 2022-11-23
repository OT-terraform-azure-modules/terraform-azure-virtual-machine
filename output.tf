output "nic_id" {
  value       = azurerm_network_interface.nic.id
}


output "vm_private_ip_address" {
  value       = azurerm_virtual_machine.vm.*.private_ip_address
}

