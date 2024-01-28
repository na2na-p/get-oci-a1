terraform {
  required_version = "~> 1.7.1"

  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = "~> 5.26.0"
    }
  }
}
