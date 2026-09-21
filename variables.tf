variable "project_id" {
    description = "Project ID to create resources in."
    type        = string
    default       = "project-441d2bad-1df7-48fb-840"
}

variable "region" {
    description = "Region to place compute resources at."
    type        = string
    default       = "us-central1"
}

variable "zone" {
    description = "Zone to place compute resources at."
    type        = string
    default       = "us-central1-a"
}

variable network {
    description = "Network to place compute resources at."
    type        = string
    default       = "default"
}

variable subnetwork {
    description = "Subnetwork to place compute resources at."
    type        = string
    default       = "default"
}

variable "machine_name" {
    description = "Name of the virtual machine."
    type        = string
    default       = "vm-test-instance"
}

variable "machine_type" {
    description = "Type of the virtual machine."
    type        = string
    default       = "e2-small"
}