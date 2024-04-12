variable "tenancy_ocid" {
  type        = string
  description = "tenancy_ocid"
}

variable "user_ocid" {
  type        = string
  description = "user_ocid"
}

variable "fingerprint" {
  type        = string
  description = "fingerprint"
}

variable "private_key_path" {
  type        = string
  description = "private_key_path"
}

variable "region" {
  type        = string
  description = "region"
  default     = "ap-tokyo-1"
}

variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "ssh_authorized_keys" {
  type        = string
  description = "ssh_authorized_keys"
}
