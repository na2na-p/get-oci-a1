variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "vcn_id" {
  type        = string
  description = "vcn_id"
}

variable "pod_subnet_sec_list_name" {
  type        = string
  description = "pod_subnet_sec_list_name"
}

variable "pod_subnet_cidr_block" {
	type        = string
	description = "pod_subnet_cidr_block"
}
