module "oke" {
	source         = "../../modules/app"
	compartment_id = var.compartment_id
	core_vcn_dns_label  = var.vcn_dns_label
}
