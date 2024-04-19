variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "cluster_id" {
  type        = string
  description = "cluster_id"
}

variable "node_pool_name" {
  type        = string
  description = "node_pool_name"
}

variable "kubernetes_version" {
  type        = string
  description = "kubernetes_version"
}

variable "node_subnet_id" {
  type        = string
  description = "node_subnet_id"
}

variable "node_pool_size" {
  type        = number
  description = "node_pool_size"
}

variable "node_shape" {
  type        = string
  description = "node_shape"
  default     = "VM.Standard.A1.Flex"
}

variable "memory_in_gbs" {
  type        = string
  description = "memory_in_gbs"
}

variable "ocpus" {
  type        = string
  description = "ocpus"
}

variable "eviction_grace_duration" {
  type    = string
  default = "PT60M"
}

variable "availability_domain" {
  type    = string
  default = "yWQa:AP-TOKYO-1-AD-1"
}

variable "pod_subnet_id" {
	type    = string
	description = "pod_subnet_id"
}
