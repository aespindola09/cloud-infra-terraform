// INSTANCE PRINCIPAL
resource "google_compute_instance" "default" {
  name         = "${var.compute_instance}"
  machine_type = "${var.machine-type}"
  zone         = "${var.zone}"

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }
   metadata_startup_script = "${var.startup-script}"
  network_interface {
    # A default network is created for all GCP projects
    subnetwork       = "${var.subnetwork_name}"
    access_config = ["${var.access_config}"]

  }
  
}
// BASTION HOST
resource "google_compute_instance" "bastion" {
  name         = "${var.bastion}"
  machine_type = "${var.bastion_machine_type}"
  zone         = "${var.zone}"

//tags = ["ssh-allow"]

    boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }
  network_interface {
    # A network is created for all GCP projects
    subnetwork       = "${var.subnetwork_name}"
    access_config = {

    }

  }

}