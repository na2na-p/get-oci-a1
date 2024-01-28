module "vcn" {
  source          = "./vcn"
  compartment_id  = var.compartment_id
  vcn_cidr_blocks = var.vcn_cidr_blocks
  vcn_name        = var.vcn_name
}

module "subnet" {
  source                 = "./subnet"
  compartment_id         = var.compartment_id
  subnet_cidr            = var.subnet_cidr
  subnet_name            = var.subnet_name
  vcn_id                 = module.vcn.vcn_id
  subnet_ipv6_cidr_block = "${split("::", module.vcn.vcn_ipv6_cidr_blocks[0])[0]}::/64"
}

module "compute_instance" {
  source              = "./compute_instance"
  compartment_id      = var.compartment_id
  availability_domain = var.availability_domain
  memory_in_gbs       = var.memory_in_gbs
  ocpus               = var.ocpus
  ssh_authorized_keys = var.ssh_authorized_keys
  compute_name        = var.compute_name
  subnet_id           = module.subnet.subnet_id
}
