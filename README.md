# learn-terraform-azure

- <https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build>
- terraform apply -var "resource_group_name=myNewResourceGroupName"  
  <https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-variables>
- outputs.tf  
   output "resource_group_id" {  
   value = azurerm_resource_group.rg.id  
   }
- terraform output resource_group_id
