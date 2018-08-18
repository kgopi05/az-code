
# Create virtual network
resource "azurerm_virtual_network" "mgmt_vnet" {
    name                = "${var.vnet}"
    address_space       = ["10.0.0.0/16"]
    location = "${var.location}"
    resource_group_name = "${azurerm_resource_group.winrg.name}"

    tags {
        environment = "Terraform Demo"
    }
}
# Create subnet
resource "azurerm_subnet" "mgmt_subnet" {
    name                 = "K-${upper(var.short_location)}-${upper(var.role)}${count.index+1}-SN"
    resource_group_name  = "${azurerm_resource_group.winrg.name}"
    virtual_network_name = "${azurerm_virtual_network.mgmt_vnet.name}"
    address_prefix       = "10.0.1.0/24"
}
# Create Network Security Group and rule
resource "azurerm_network_security_group" "mgmt_nsg" {
    name                = "K-${upper(var.short_location)}-${upper(var.role)}-NSG"
    location            = "${var.location}"
    resource_group_name = "${azurerm_resource_group.winrg.name}"

    security_rule {
        name                       = "RDP"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
	security_rule {
        name                       = "Chefport"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "5985"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags {
        environment = "Terraform Demo"
    }
}
