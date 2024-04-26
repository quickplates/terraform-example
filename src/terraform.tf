# Terraform settings
terraform {
  # Store state locally
  backend "local" {
    path = "terraform.tfstate"
  }

  # Require the following providers
  required_providers {
    # SOPS provider used to decrypt secrets
    sops = {
      source  = "carlpett/sops"
      version = "~> 1.0"
    }
  }
}
