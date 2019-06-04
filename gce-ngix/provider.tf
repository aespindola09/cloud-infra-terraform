// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("credentials.json")}"
  project = "${var.var_project}"
  region  = "us-central1"
  zone    = "us-central1-c"
}