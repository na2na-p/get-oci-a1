resource "oci_core_security_list" "pod_subnet_sec_list" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
  }
	compartment_id = var.compartment_id
	vcn_id         = var.vcn_id
	display_name   = var.pod_subnet_sec_list_name

	egress_security_rules {
		description      = "Allow all outbound traffic from pods"
		destination      = "0.0.0.0/0"
		destination_type = "CIDR_BLOCK"
		protocol         = "all"
		stateless        = "false"
	}
	ingress_security_rules {
		description = "Allow all inbound traffic to pods"
		protocol    = "all"
		source      = "0.0.0.0/0"
		stateless   = "false"
	}
	ingress_security_rules {
		description = "ICMP for path discovery and network diagnostics"
		icmp_options {
			code = "4"
			type = "3"
		}
		protocol  = "1"
		source    = var.pod_subnet_cidr_block
		stateless = "false"
	}
}
