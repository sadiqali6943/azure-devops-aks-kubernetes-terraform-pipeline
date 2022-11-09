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
 subscription_id = "78f0ed2d-5163-49c1-a5dc-36f2f90ee94d"
 client_id = "cb678112-c487-4e3e-b1c3-6a54394b6319"
 tenant_id = "0b8cd897-8118-400f-a27c-cf4f443d1f6a"
 client_secret = "K4r8Q~Y1BO9kn0RGgHdNK4OrEFnknkpB3jb1ZbY."
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

