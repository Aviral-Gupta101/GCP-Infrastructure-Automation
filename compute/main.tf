resource "google_compute_firewall" "allow_http" {
  name    = "allow-http"
  network = var.network_id

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  direction = "INGRESS"
  source_ranges = ["0.0.0.0/0"]

  target_tags = ["http-server"]
}


resource "google_compute_instance" "my-instance" {
  name         = "my-instance"
  machine_type = "e2-small"
  zone         = "asia-south2-c"

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20250709"
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    
		network = var.network_id
		subnetwork = var.subnet_id

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "sudo apt-get install apache2 -y"
}