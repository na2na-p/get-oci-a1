variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "vcn_cidr_blocks" {
  type        = list(string)
  description = "vcn_cidr_blocks"
}

variable "vcn_name" {
  type        = string
  description = "vcn_name"
}
