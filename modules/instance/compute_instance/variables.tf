variable "memory_in_gbs" {
  type        = string
  description = "memory_in_gbs"
}

variable "ocpus" {
  type        = string
  description = "ocpus"
}

variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "availability_domain" {
  type        = string
  description = "availability_domain"
}

variable "ssh_authorized_keys" {
  type        = string
  description = "ssh_authorized_keys"
}

variable "compute_name" {
  type        = string
  description = "compute_name"
}

variable "subnet_id" {
  type        = string
  description = "subnet_id"
}
