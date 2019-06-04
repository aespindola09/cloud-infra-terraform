# Specify the provider (GCP, AWS, Azure)
provider "google" {
  credentials = "${file("credentials.json")}"
  project = "${var.var_project}"
  region  = "us-central1"
  zone    = "us-central1-c"
}