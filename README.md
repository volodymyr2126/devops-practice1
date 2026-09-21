## terraform init
``` logs
terraform init            
Initializing the backend...

Successfully configured the backend "gcs"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- Reusing previous version of hashicorp/google from the dependency lock file
- Using previously-installed hashicorp/google v8.3.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

```

## terraform plan
``` logs
terraform plan
Acquiring state lock. This may take a few moments...

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # google_bigquery_dataset.dataset will be created
  + resource "google_bigquery_dataset" "dataset" {
      + creation_time               = (known after apply)
      + dataset_id                  = "test_dataset"
      + default_table_expiration_ms = 3600000
      + delete_contents_on_destroy  = false
      + deletion_policy             = "DELETE"
      + description                 = "This is a test dataset for practice"
      + effective_labels            = {
          + "goog-terraform-provisioned" = "true"
        }
      + etag                        = (known after apply)
      + friendly_name               = "test"
      + id                          = (known after apply)
      + is_case_insensitive         = (known after apply)
      + last_modified_time          = (known after apply)
      + location                    = "US"
      + max_time_travel_hours       = (known after apply)
      + project                     = "project-441d2bad-1df7-48fb-840"
      + self_link                   = (known after apply)
      + storage_billing_model       = (known after apply)
      + terraform_labels            = {
          + "goog-terraform-provisioned" = "true"
        }

      + access (known after apply)
    }

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + creation_timestamp   = (known after apply)
      + current_status       = (known after apply)
      + deletion_policy      = "DELETE"
      + deletion_protection  = false
      + effective_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "e2-small"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "vm-test-instance"
      + project              = "project-441d2bad-1df7-48fb-840"
      + self_link            = (known after apply)
      + tags                 = [
          + "devops-course",
          + "ssh",
        ]
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + zone                 = "us-central1-a"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + guest_os_features          = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + architecture           = (known after apply)
              + image                  = "centos-stream-9"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + resource_policies      = (known after apply)
              + size                   = (known after apply)
              + snapshot               = (known after apply)
              + type                   = (known after apply)
            }
        }

      + confidential_instance_config (known after apply)

      + guest_accelerator (known after apply)

      + network_interface {
          + igmp_query                  = (known after apply)
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + network_attachment          = (known after apply)
          + network_ip                  = (known after apply)
          + parent_nic_name             = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = "default"
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity (known after apply)

      + scheduling (known after apply)
    }

  # google_storage_bucket.bucket will be created
  + resource "google_storage_bucket" "bucket" {
      + deletion_policy             = "DELETE"
      + effective_labels            = {
          + "goog-terraform-provisioned" = "true"
        }
      + force_destroy               = false
      + id                          = (known after apply)
      + location                    = "US"
      + name                        = "test-bucket-441d2bad-1df7-48fb-840"
      + project                     = "project-441d2bad-1df7-48fb-840"
      + project_number              = (known after apply)
      + public_access_prevention    = (known after apply)
      + rpo                         = (known after apply)
      + self_link                   = (known after apply)
      + storage_class               = "STANDARD"
      + terraform_labels            = {
          + "goog-terraform-provisioned" = "true"
        }
      + time_created                = (known after apply)
      + uniform_bucket_level_access = true
      + updated                     = (known after apply)
      + url                         = (known after apply)

      + soft_delete_policy (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.
```

## terraform apply
``` logs
terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_bigquery_dataset.dataset will be created
  + resource "google_bigquery_dataset" "dataset" {
      + creation_time               = (known after apply)
      + dataset_id                  = "test_dataset"
      + default_table_expiration_ms = 3600000
      + delete_contents_on_destroy  = false
      + deletion_policy             = "DELETE"
      + description                 = "This is a test dataset for practice"
      + effective_labels            = {
          + "goog-terraform-provisioned" = "true"
        }
      + etag                        = (known after apply)
      + friendly_name               = "test"
      + id                          = (known after apply)
      + is_case_insensitive         = (known after apply)
      + last_modified_time          = (known after apply)
      + location                    = "US"
      + max_time_travel_hours       = (known after apply)
      + project                     = "project-441d2bad-1df7-48fb-840"
      + self_link                   = (known after apply)
      + storage_billing_model       = (known after apply)
      + terraform_labels            = {
          + "goog-terraform-provisioned" = "true"
        }

      + access (known after apply)
    }

  # google_compute_instance.vm_instance will be created
  + resource "google_compute_instance" "vm_instance" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + creation_timestamp   = (known after apply)
      + current_status       = (known after apply)
      + deletion_policy      = "DELETE"
      + deletion_protection  = false
      + effective_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "e2-small"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "vm-test-instance"
      + project              = "project-441d2bad-1df7-48fb-840"
      + self_link            = (known after apply)
      + tags                 = [
          + "devops-course",
          + "ssh",
        ]
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + zone                 = "us-central1-a"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + guest_os_features          = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + architecture           = (known after apply)
              + image                  = "centos-stream-9"
              + labels                 = (known after apply)
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + resource_policies      = (known after apply)
              + size                   = (known after apply)
              + snapshot               = (known after apply)
              + type                   = (known after apply)
            }
        }

      + confidential_instance_config (known after apply)

      + guest_accelerator (known after apply)

      + network_interface {
          + igmp_query                  = (known after apply)
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = "default"
          + network_attachment          = (known after apply)
          + network_ip                  = (known after apply)
          + parent_nic_name             = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = "default"
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity (known after apply)

      + scheduling (known after apply)
    }

  # google_storage_bucket.bucket will be created
  + resource "google_storage_bucket" "bucket" {
      + deletion_policy             = "DELETE"
      + effective_labels            = {
          + "goog-terraform-provisioned" = "true"
        }
      + force_destroy               = false
      + id                          = (known after apply)
      + location                    = "US"
      + name                        = "test-bucket-441d2bad-1df7-48fb-840"
      + project                     = "project-441d2bad-1df7-48fb-840"
      + project_number              = (known after apply)
      + public_access_prevention    = (known after apply)
      + rpo                         = (known after apply)
      + self_link                   = (known after apply)
      + storage_class               = "STANDARD"
      + terraform_labels            = {
          + "goog-terraform-provisioned" = "true"
        }
      + time_created                = (known after apply)
      + uniform_bucket_level_access = true
      + updated                     = (known after apply)
      + url                         = (known after apply)

      + soft_delete_policy (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_bigquery_dataset.dataset: Creating...
google_storage_bucket.bucket: Creating...
google_compute_instance.vm_instance: Creating...
google_bigquery_dataset.dataset: Creation complete after 1s [id=projects/project-441d2bad-1df7-48fb-840/datasets/test_dataset]
google_storage_bucket.bucket: Creation complete after 2s [id=test-bucket-441d2bad-1df7-48fb-840]
google_compute_instance.vm_instance: Still creating... [00m10s elapsed]
google_compute_instance.vm_instance: Still creating... [00m20s elapsed]
google_compute_instance.vm_instance: Creation complete after 24s [id=projects/project-441d2bad-1df7-48fb-840/zones/us-central1-a/instances/vm-test-instance]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```

## terraform destroy
``` logs
terraform destroy
google_storage_bucket.bucket: Refreshing state... [id=test-bucket-441d2bad-1df7-48fb-840]
google_bigquery_dataset.dataset: Refreshing state... [id=projects/project-441d2bad-1df7-48fb-840/datasets/test_dataset]
google_compute_instance.vm_instance: Refreshing state... [id=projects/project-441d2bad-1df7-48fb-840/zones/us-central1-a/instances/vm-test-instance]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # google_bigquery_dataset.dataset will be destroyed
  - resource "google_bigquery_dataset" "dataset" {
      - creation_time                   = 1790005134551 -> null
      - dataset_id                      = "test_dataset" -> null
      - default_partition_expiration_ms = 0 -> null
      - default_table_expiration_ms     = 3600000 -> null
      - delete_contents_on_destroy      = false -> null
      - deletion_policy                 = "DELETE" -> null
      - description                     = "This is a test dataset for practice" -> null
      - effective_labels                = {
          - "goog-terraform-provisioned" = "true"
        } -> null
      - etag                            = "3xtAcm6QLLKG6hkdo2z81A==" -> null
      - friendly_name                   = "test" -> null
      - id                              = "projects/project-441d2bad-1df7-48fb-840/datasets/test_dataset" -> null
      - is_case_insensitive             = false -> null
      - labels                          = {} -> null
      - last_modified_time              = 1790005134551 -> null
      - location                        = "US" -> null
      - max_time_travel_hours           = "168" -> null
      - project                         = "project-441d2bad-1df7-48fb-840" -> null
      - resource_tags                   = {} -> null
      - self_link                       = "https://bigquery.googleapis.com/bigquery/v2/projects/project-441d2bad-1df7-48fb-840/datasets/test_dataset" -> null
      - terraform_labels                = {
          - "goog-terraform-provisioned" = "true"
        } -> null
        # (2 unchanged attributes hidden)

      - access {
          - role           = "OWNER" -> null
          - user_by_email  = "volodymyr2126@gmail.com" -> null
            # (4 unchanged attributes hidden)
        }
      - access {
          - role           = "OWNER" -> null
          - special_group  = "projectOwners" -> null
            # (4 unchanged attributes hidden)
        }
      - access {
          - role           = "READER" -> null
          - special_group  = "projectReaders" -> null
            # (4 unchanged attributes hidden)
        }
      - access {
          - role           = "WRITER" -> null
          - special_group  = "projectWriters" -> null
            # (4 unchanged attributes hidden)
        }
    }

  # google_compute_instance.vm_instance will be destroyed
  - resource "google_compute_instance" "vm_instance" {
      - can_ip_forward             = false -> null
      - cpu_platform               = "AMD Rome" -> null
      - creation_timestamp         = "2026-09-21T08:38:58.183-07:00" -> null
      - current_status             = "RUNNING" -> null
      - deletion_policy            = "DELETE" -> null
      - deletion_protection        = false -> null
      - effective_labels           = {
          - "goog-terraform-provisioned" = "true"
        } -> null
      - enable_display             = false -> null
      - id                         = "projects/project-441d2bad-1df7-48fb-840/zones/us-central1-a/instances/vm-test-instance" -> null
      - instance_id                = "222104315359981950" -> null
      - label_fingerprint          = "vezUS-42LLM=" -> null
      - labels                     = {} -> null
      - machine_type               = "e2-small" -> null
      - metadata                   = {} -> null
      - metadata_fingerprint       = "XjyeGkfD-3I=" -> null
      - name                       = "vm-test-instance" -> null
      - project                    = "project-441d2bad-1df7-48fb-840" -> null
      - resource_policies          = [] -> null
      - self_link                  = "https://www.googleapis.com/compute/v1/projects/project-441d2bad-1df7-48fb-840/zones/us-central1-a/instances/vm-test-instance" -> null
      - tags                       = [
          - "devops-course",
          - "ssh",
        ] -> null
      - tags_fingerprint           = "bPNY2gaTSIc=" -> null
      - terraform_labels           = {
          - "goog-terraform-provisioned" = "true"
        } -> null
      - zone                       = "us-central1-a" -> null
        # (4 unchanged attributes hidden)

      - boot_disk {
          - auto_delete                     = true -> null
          - device_name                     = "persistent-disk-0" -> null
          - force_attach                    = false -> null
          - guest_os_features               = [
              - "UEFI_COMPATIBLE",
              - "VIRTIO_SCSI_MULTIQUEUE",
              - "SEV_CAPABLE",
              - "SEV_SNP_CAPABLE",
              - "SEV_LIVE_MIGRATABLE",
              - "SEV_LIVE_MIGRATABLE_V2",
              - "GVNIC",
              - "IDPF",
              - "TDX_CAPABLE",
            ] -> null
          - mode                            = "READ_WRITE" -> null
          - source                          = "https://www.googleapis.com/compute/v1/projects/project-441d2bad-1df7-48fb-840/zones/us-central1-a/disks/vm-test-instance" -> null
            # (6 unchanged attributes hidden)

          - initialize_params {
              - architecture                = "X86_64" -> null
              - enable_confidential_compute = false -> null
              - image                       = "https://www.googleapis.com/compute/v1/projects/centos-cloud/global/images/centos-stream-9-v20260908" -> null
              - labels                      = {} -> null
              - provisioned_iops            = 0 -> null
              - provisioned_throughput      = 0 -> null
              - replica_zones               = [] -> null
              - resource_manager_tags       = {} -> null
              - resource_policies           = [] -> null
              - size                        = 20 -> null
              - type                        = "pd-standard" -> null
                # (2 unchanged attributes hidden)
            }
        }

      - network_interface {
          - internal_ipv6_prefix_length = 0 -> null
          - name                        = "nic0" -> null
          - network                     = "https://www.googleapis.com/compute/v1/projects/project-441d2bad-1df7-48fb-840/global/networks/default" -> null
          - network_ip                  = "10.128.0.2" -> null
          - queue_count                 = 0 -> null
          - stack_type                  = "IPV4_ONLY" -> null
          - subnetwork                  = "https://www.googleapis.com/compute/v1/projects/project-441d2bad-1df7-48fb-840/regions/us-central1/subnetworks/default" -> null
          - subnetwork_project          = "project-441d2bad-1df7-48fb-840" -> null
          - vlan                        = 0 -> null
            # (6 unchanged attributes hidden)

          - access_config {
              - nat_ip                 = "35.184.153.21" -> null
              - network_tier           = "PREMIUM" -> null
                # (1 unchanged attribute hidden)
            }
        }

      - scheduling {
          - automatic_restart           = true -> null
          - availability_domain         = 0 -> null
          - host_error_timeout_seconds  = 0 -> null
          - min_node_cpus               = 0 -> null
          - on_host_maintenance         = "MIGRATE" -> null
          - preemptible                 = false -> null
          - provisioning_model          = "STANDARD" -> null
            # (2 unchanged attributes hidden)
        }

      - shielded_instance_config {
          - enable_integrity_monitoring = true -> null
          - enable_secure_boot          = false -> null
          - enable_vtpm                 = true -> null
        }
    }

  # google_storage_bucket.bucket will be destroyed
  - resource "google_storage_bucket" "bucket" {
      - default_event_based_hold    = false -> null
      - deletion_policy             = "DELETE" -> null
      - effective_labels            = {
          - "goog-terraform-provisioned" = "true"
        } -> null
      - enable_object_retention     = false -> null
      - force_destroy               = false -> null
      - id                          = "test-bucket-441d2bad-1df7-48fb-840" -> null
      - labels                      = {} -> null
      - location                    = "US" -> null
      - name                        = "test-bucket-441d2bad-1df7-48fb-840" -> null
      - project                     = "project-441d2bad-1df7-48fb-840" -> null
      - project_number              = 989178375783 -> null
      - public_access_prevention    = "inherited" -> null
      - requester_pays              = false -> null
      - rpo                         = "DEFAULT" -> null
      - self_link                   = "https://www.googleapis.com/storage/v1/b/test-bucket-441d2bad-1df7-48fb-840" -> null
      - storage_class               = "STANDARD" -> null
      - terraform_labels            = {
          - "goog-terraform-provisioned" = "true"
        } -> null
      - time_created                = "2026-09-21T15:38:55.585Z" -> null
      - uniform_bucket_level_access = true -> null
      - updated                     = "2026-09-21T15:38:55.585Z" -> null
      - url                         = "gs://test-bucket-441d2bad-1df7-48fb-840" -> null

      - hierarchical_namespace {
          - enabled = false -> null
        }

      - soft_delete_policy {
          - effective_time             = "2026-09-21T15:38:55.585Z" -> null
          - retention_duration_seconds = 604800 -> null
        }
    }

Plan: 0 to add, 0 to change, 3 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

google_storage_bucket.bucket: Destroying... [id=test-bucket-441d2bad-1df7-48fb-840]
google_bigquery_dataset.dataset: Destroying... [id=projects/project-441d2bad-1df7-48fb-840/datasets/test_dataset]
google_compute_instance.vm_instance: Destroying... [id=projects/project-441d2bad-1df7-48fb-840/zones/us-central1-a/instances/vm-test-instance]
google_bigquery_dataset.dataset: Destruction complete after 1s
google_storage_bucket.bucket: Destruction complete after 1s
google_compute_instance.vm_instance: Still destroying... [id=projects/project-441d2bad-1df7-48fb-840...-central1-a/instances/vm-test-instance, 00m10s elapsed]
google_compute_instance.vm_instance: Still destroying... [id=projects/project-441d2bad-1df7-48fb-840...-central1-a/instances/vm-test-instance, 00m20s elapsed]
google_compute_instance.vm_instance: Destruction complete after 25s
Releasing state lock. This may take a few moments...

Destroy complete! Resources: 3 destroyed.
```