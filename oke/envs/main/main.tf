module "oke" {
  source             = "../../modules/app"
  compartment_id     = var.compartment_id
  core_vcn_dns_label = var.vcn_dns_label
  kubernetes_version = var.kubernetes_version
  memory_in_gbs      = var.memory_in_gbs
  node_pool_size     = var.node_pool_size
  ocpus              = var.ocpus
}
