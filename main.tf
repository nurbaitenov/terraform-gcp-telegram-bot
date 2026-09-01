resource "google_compute_instance" "devops_bot_vm" {
  name         = "devops-job-finder"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2404-lts-amd64"
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }
}