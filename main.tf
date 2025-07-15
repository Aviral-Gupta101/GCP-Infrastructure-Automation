module "network" {
  source = "./network"
}

module "compute" {
  source = "./compute"
  network_id = module.network.myvnet_id
  subnet_id = module.network.mysubnet_id
}

module "storage" {
  source = "./storage"
  bucket_name = "aviral_mytestbucket_1234"
}