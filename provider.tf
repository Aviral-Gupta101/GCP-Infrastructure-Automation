provider "google" {
  project     = "sacred-reactor-465517-q6"
  region      = "asia-south2"
  credentials = file("./key.json")
}