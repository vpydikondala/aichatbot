# Azure Region
variable "location" {
  description = "The Azure region where all resources will be created."
  type        = string
  default     = "UK SOUTH"  # Default value can be changed
}

# Resource Group
variable "resource_group_name" {
  description = "The name of the resource group where resources will be deployed."
  type        = string
  default     = "ven-aib-uks-rg"  # Replace with your preferred default
}

# Application Insights
variable "app_insights_name" {
  description = "The name of the Application Insights instance."
  type        = string
  default     = "ven-aib-uks-ai"  # Replace with a desired name
}

# Application Type for Application Insights
variable "app_insights_type" {
  description = "The application type for Application Insights (e.g., 'web', 'other')."
  type        = string
  default     = "web"
}

# Application Insights Retention Period
variable "app_insights_retention_days" {
  description = "The retention period in days for Application Insights logs."
  type        = number
  default     = 90
}

# Storage Account Name
variable "storage_account_name" {
  description = "The name of the Azure Storage Account for Terraform state or application data."
  type        = string
  default     = "ven-aib-uks-st"  # Ensure this meets Azure naming requirements
}

# Terraform State Container Name
variable "tf_state_container_name" {
  description = "The name of the container in the storage account to store Terraform state."
  type        = string
  default     = "terraform-state"
}

# Private Endpoint Subnet
variable "private_endpoint_subnet_name" {
  description = "The name of the subnet for private endpoints."
  type        = string
  default     = "ven-aib-uks-pesubnet"
}

# Virtual Network
variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "ven-aib-uks-vnet"
}

# Address Space for Virtual Network
variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# Application Gateway Public IP
variable "app_gateway_public_ip_name" {
  description = "The name of the public IP for the Application Gateway."
  type        = string
  default     = "ven-aib-uks-pip"
}

# Application Gateway
variable "app_gateway_name" {
  description = "The name of the Application Gateway."
  type        = string
  default     = "ven-aib-uks-apgw"
}

# Subnets
variable "subnets" {
  description = "A map of subnet names and their address prefixes."
  type        = map(string)
  default     = {
    app_gateway_subnet            = "10.0.1.0/24"
    app_service_integration_subnet = "10.0.2.0/24"
    private_endpoint_subnet        = "10.0.3.0/24"
    jumpbox_subnet                 = "10.0.4.0/24"
  }
}

# App Service Plan
variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
  default     = "ven-aib-uks-asp"
}

# App Service
variable "app_service_name" {
  description = "The name of the App Service instance."
  type        = string
  default     = "ven-aib-uks-app"
}

# Key Vault
variable "key_vault_name" {
  description = "The name of the Key Vault instance."
  type        = string
  default     = "ven-aib-uks-kv"
}

# Managed Identity
variable "managed_identity_name" {
  description = "The name of the managed identity for accessing secure resources."
  type        = string
  default     = "ven-aib-uks-umi"
}

# Container Registry
variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "ven-aib-uks-acr"
}

# Machine Learning Workspace
variable "ml_workspace_name" {
  description = "The name of the Azure Machine Learning Workspace."
  type        = string
  default     = "ven-aib-uks-mlws"
}

# Jump Box
variable "jumpbox_name" {
  description = "The name of the Jump Box virtual machine."
  type        = string
  default     = "venaibuksvm"
}

# Jump Box VM Size
variable "jumpbox_vm_size" {
  description = "The size of the Jump Box virtual machine."
  type        = string
  default     = "Standard_B2s"
}

# Admin Username for Jump Box
variable "jumpbox_admin_username" {
  description = "The admin username for the Jump Box VM."
  type        = string
  default     = "adminuser"
}

# Admin Password for Jump Box (Use secure methods for production)
variable "jumpbox_admin_password" {
  description = "The admin password for the Jump Box VM."
  type        = string
  sensitive   = true
}
