# We will define 
# 1. Terraform Settings Block
# 1. Required Version Terraform
# 2. Required Terraform Providers
# 3. Terraform Remote State Storage with Azure Storage Account (last step of this section)
# 2. Terraform Provider Block for AzureRM
# 3. Terraform Resource Block: Define a Random Pet Resource

# 1. Terraform Settings Block





# Terraform State Storage to Azure Storage Container




# 2. Terraform Provider Block for AzureRM


# 3. Terraform Resource Block: Define a Random Pet Resource



provider "azurerm" {
 subscription_id = "1a019097-e69a-4d9a-a6da-884d34b3c302"
 client_id = "c1d93004-c227-4b2a-be8a-640abaee59ee"
 tenant_id = "b1387e34-57c8-4fb0-ae4a-360b79e6a4aa"
 client_secret = "nLr8Q~NGrVTziTBGyLvj0N6HYxYxEDpMJKtlHb_A"
  features {
  }
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
      
    }
    azuread={
      source = "hashicorp/azuread"
      version = "2.28.1"
    }
  }

   
}

/*

  backend "azurerm" {
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "terraformstatexlrwdrzs"
    container_name        = "tfstatefiles"
    key                   = "dev.terraform.tfstate"
  }  
  

  */


resource "random_pet" "aksrandom" {

}

