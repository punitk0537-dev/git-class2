# Terraform Code Information

Is repository mein Azure cloud resources ko Terraform ke through create karne ka code define kiya gaya hai.

---

## 📄 Code Files & Explanation

### 1. `provider.tf` (Azure Provider Configuration)
Is file mein Terraform ko Microsoft Azure ke sath connect karne ke liye provider configuration likhi gayi hai:

```hcl
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
```

- **`required_providers`**: Terraform ko batata hai ki `hashicorp/azurerm` provider use karna hai.
- **`version = "=5.0.0"`**: AzureRM provider ka specific `5.0.0` version lock kiya gaya hai.
- **`provider "azurerm"`**: Azure provider ko initialize karta hai (`features {}` block required hota hai).

---

### 2. `rg.tf` (Resource Group Definition)
Is file mein Azure Resource Group ko create karne ka resource block define kiya gaya hai:

```hcl
# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "punit-rg"
  location = "West Europe"
}
```

- **Resource Type**: `azurerm_resource_group` (Azure Resource Group create karta hai).
- **Terraform Resource Name**: `rg` (Terraform internal reference ke liye).
- **`name`**: `"punit-rg"` (Azure portal par resource group ka actual name).
- **`location`**: `"West Europe"` (Azure region jahan resource group create hoga).

---

## 📊 Summary of Resources

| Resource | Terraform Block | Resource Name | Region / Location | Provider |
| :--- | :--- | :--- | :--- | :--- |
| **Resource Group** | `azurerm_resource_group.rg` | `punit-rg` | `West Europe` | `azurerm` (v5.0.0) |

---

## ⚡ Quick Commands

```bash
# 1. Initialize Terraform & Provider
terraform init

# 2. Check Plan
terraform plan

# 3. Apply Changes
terraform apply
```