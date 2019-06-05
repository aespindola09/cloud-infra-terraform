# Specify the provider (GCP, AWS, Azure)
provider "google" {
  credentials = "${file("credentials.json")}"
  project = "${var.var_project}"
  zone    = "us-central1-c"
}