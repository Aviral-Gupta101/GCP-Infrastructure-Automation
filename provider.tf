terraform { 
  cloud { 
    
    organization = "org-aviral" 

    workspaces { 
      name = "my-terraform-workspace-1" 
    } 
  } 
}

provider "google" {
  project     = "sacred-reactor-465517-q6"
  region      = "asia-south2"
  credentials = file("./key.json")
}