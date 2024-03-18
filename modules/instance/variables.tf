variable "memory_in_gbs" {
  type        = string
  description = "memory_in_gbs"
  default     = "24"
}

variable "ocpus" {
  type        = string
  description = "ocpus"
  default     = "6"
}

variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "availability_domain" {
  type        = string
  description = "availability_domain"
  default     = "yWQa:AP-TOKYO-1-AD-1"
}

variable "ssh_authorized_keys" {
  type        = string
  description = "ssh_authorized_keys"
}

variable "compute_name" {
  type        = string
  description = "display_name"
  default     = "infrastructure"
}

variable "vcn_cidr_blocks" {
  type        = list(string)
  description = "vcn_cidr_blocks"
  default     = ["10.0.0.0/16"]
}

variable "vcn_name" {
  type        = string
  description = "vcn_name"
  default     = "infrastructure_vcn"
}

variable "subnet_cidr" {
  type        = string
  description = "subnet_cidr"
  default     = "10.0.0.0/29"
}

variable "subnet_name" {
  type        = string
  description = "subnet_name"
  default     = "infrastructure_subnet"
}

variable "igw_name" {
  type        = string
  description = "igw_name"
  default     = "infrastructure_igw"
}

variable "rt_name" {
  type        = string
  description = "rt_name"
  default     = "infrastructure_rt"
}
