output "myvnet_id" {
    value = google_compute_network.myvnet.id
}

output "myvnet_name" {
    value = google_compute_network.myvnet.name
}

output "mysubnet_id" {
    value = google_compute_subnetwork.mysubnet.id
}

output "mysubnet_name" {
    value = google_compute_subnetwork.mysubnet.name
}