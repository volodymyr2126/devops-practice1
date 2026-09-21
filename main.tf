resource "google_compute_instance" "vm_instance" {
	project = var.project_id
	name = var.machine_name
	machine_type = var.machine_type
	zone = var.zone
	boot_disk {
		initialize_params {
			image = "centos-stream-9"
		}
		}

	network_interface {
		network = var.network
		subnetwork = var.subnetwork
		access_config {
		}	
	}
	
	tags = ["ssh", "devops-course"]
}

resource "google_bigquery_dataset" "dataset" {
  project = var.project_id
  dataset_id                  = "test_dataset"
  friendly_name               = "test"
  description                 = "This is a test dataset for practice"
  location                    = "US"
  default_table_expiration_ms = 3600000
}

resource "google_storage_bucket" "bucket" {
  project = var.project_id
  name          = "test-bucket-441d2bad-1df7-48fb-840"
  location      = "US"

  uniform_bucket_level_access = true
}
