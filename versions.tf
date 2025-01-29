terraform {
  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = "~> 1.5"
    }
  }

  required_version = ">= 1.0"
}
