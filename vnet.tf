module "network" {
  source              = "app.terraform.io/sista/network/azurerm"
  version             = "3.0.1"
  resource_group_name = azurerm_resource_group.myresourcegroup.name
  address_space       = "10.1.0.0/16"
  subnet_prefixes     = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  tags = {
    environment = "dev"
    costcenter  = "it"
  }
}
