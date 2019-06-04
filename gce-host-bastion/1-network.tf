//network
resource "google_compute_network" "default" {
  name = "${var.network_name}"
  auto_create_subnetworks = false
  delete_default_routes_on_create = false
}
resource "google_compute_subnetwork" "default" {
  name                     = "${var.subnetwork_name}"
  ip_cidr_range            = "${var.network_cidr}"
  network                  = "${var.network_name}"
  region                   = "${var.region}"
  description              = "Subnet para infra con host de bastion"
  private_ip_google_access = true
  depends_on = ["google_compute_network.default"]
}

resource "google_compute_firewall" "default" {
  name    = "${var.firewall}"
  network = "${var.network_name}"
  description = "Acceso puertos 80, 8080, 22"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "22"]
  }

  source_tags = ["web"]
  depends_on = ["google_compute_network.default"]
}

resource "google_compute_firewall" "bastion" {
  name    = "${var.firewall-bastion}"
  network = "${var.network_name}"
  description = "Acceso Puerto 22"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
depends_on = ["google_compute_network.default"]
}