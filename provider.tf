terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = "thermal-imprint-504623-f6" # ID is hardcoded
  region  = "us-central1"
  zone    = "us-central1-a"
}