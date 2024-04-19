resource "oci_core_subnet" "oke_node_subnet" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  cidr_block     = var.cidr_block

  display_name               = var.node_subnet_name
  dns_label                  = var.node_subnet_dns_label
  prohibit_public_ip_on_vnic = var.prohibit_public_ip_on_vnic
  route_table_id             = var.route_table_id
  security_list_ids          = [var.security_list_id]
}
