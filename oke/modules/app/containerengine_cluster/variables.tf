variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "vcn_id" {
  type        = string
  description = "vcn_id"
}

variable "kubernetes_api_endpoint_subnet_id" {
  type        = string
  description = "kubernetes_api_endpoint_subnet_id"
}

variable "cluster_name" {
  type        = string
  description = "cluster_name"
}

variable "service_lb_subnet_id" {
	type        = string
	description = "service_lb_subnet_id"
}

variable "kubernetes_version" {
	type        = string
	description = "kubernetes_version"
}
