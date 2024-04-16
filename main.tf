

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.10.0"
    }
  }
}

provider "google" {
   credentials = var.GOOGLE_APPLICATION_CREDENTIALS
  project = "navin-terraform-training"
  region  = "asia-south1"
  zone    = "asia-south1-a"
}

resource "google_compute_instance" "vm_instance1" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}

resource "google_compute_instance" "vm_instance2" {
  name         = "terraform-instance2"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}
resource "google_compute_instance" "instance-20240410-164112" {
  # (resource arguments)
  
    # A default network is created for all GCP projects
    name         = "instance-20240410-164112"
machine_type = "e2-micro"

boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}

#resource "google_compute_instance" "vvm_instance_new" {
#  name         = "terraform-instance-new"
#  machine_type = "e2-micro"

#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-11"
#    }
#  }

#  network_interface {
#    # A default network is created for all GCP projects
#    network = "default"
#    access_config {
#    }
#  }
#}

