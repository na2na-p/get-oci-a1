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

variable "vcn_dns_label" {
  type        = string
  description = "vcn_dns_label"
}

variable "kubernetes_version" {
  type        = string
  description = "kubernetes_version"
  default     = "v1.29.1"
}

variable "node_pool_size" {
  type        = number
  description = "ノードプールに配置するVMの数。Allways Freeの枠超えないように調整してください。"
  default     = 1
}

variable "memory_in_gbs" {
  type        = string
  description = "memory_in_gbs"
  default     = "12"
}

variable "ocpus" {
  type        = string
  description = "ocpus"
  default     = "2"
}
