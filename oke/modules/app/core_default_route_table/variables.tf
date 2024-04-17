variable "internet_gateway_id" {
  type        = string
  description = "internet_gateway_id"
}

variable "default_route_table_name" {
  type        = string
  description = "default_route_table_name"
}

variable "default_route_table_id" {
  type        = string
  description = "VCNに紐づくdefault route tableのID"
}
