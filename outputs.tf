output "myvnet_id" {
  value = module.network.myvnet_id
}

output "mysubnet_id" {
  value = module.network.mysubnet_id
}

output "vm_ip" {
  value = module.compute.my_instance_public_ip
}