resource "oci_core_route_table" "infrastructure_rt" {
	freeform_tags = {
		"ManagedBy" = "Terraform"
	}
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.rt_name

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = var.igw_id
  }

  route_rules {
    destination       = "::/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = var.igw_id
  }
}
