resource "google_compute_subnetwork" "mysubnet" {
  name          = "mysubnet"
  ip_cidr_range = "10.2.0.0/16"
  region        = "asia-south2"
  network       = google_compute_network.myvnet.id
}

resource "google_compute_network" "myvnet" {
  name                    = "myvnet"
  auto_create_subnetworks = false
}