resource "oci_core_default_route_table" "oke_default_route_table" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  display_name = var.default_route_table_name

  route_rules {
    description       = "traffic to/from internet"
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = var.internet_gateway_id
  }
  manage_default_resource_id = var.default_route_table_id
}
