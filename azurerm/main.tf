terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
}

provider "azurerm" {
  features{}
  subscription_id = "32bd2260-8449-4526-af4d-a40b9179ba7c"
}

resource "azurerm_resource_group" "name" {
    name= "dellrg"
    location="canadacentral"
}

resource "azurerm_public_ip" "pip1" {
    depends_on = [azurerm_resource_group.name]
  name                = "public_ip2"
  resource_group_name = "dellrg"
  location            = "canadacentral"
  allocation_method   = "Static"
}
resource "azurerm_public_ip" "pip2" {
     depends_on = [azurerm_resource_group.name]
  name                = "public_ip"
  resource_group_name = "dellrg"
  location            = "canadacentral"
  allocation_method   = "Static"
}