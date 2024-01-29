variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "subnet_cidr" {
  type        = string
  description = "subnet_cidr"
}

variable "subnet_ipv6_cidr_blocks" {
  type        = list(string)
  description = "subnet_ipv6_cidr_blocks"
}

variable "subnet_name" {
  type        = string
  description = "subnet_name"
}

variable "vcn_id" {
  type        = string
  description = "vcn_id"
}
