resource "oci_containerengine_cluster" "oke_containerengine_cluster" {
  freeform_tags = {
    "ManagedBy"      = "Terraform"
    "OKEclusterName" = var.cluster_name
  }
  compartment_id = var.compartment_id

  kubernetes_version = var.kubernetes_version
  cluster_pod_network_options {
    cni_type = "OCI_VCN_IP_NATIVE"
  }
  endpoint_config {
    is_public_ip_enabled = "true"
    subnet_id            = var.kubernetes_api_endpoint_subnet_id
  }

  options {
    admission_controller_options {
      is_pod_security_policy_enabled = "false"
    }
    persistent_volume_config {
      freeform_tags = {
        "ManagedBy"      = "Terraform"
        "OKEclusterName" = var.cluster_name
      }
    }
    service_lb_config {
      freeform_tags = {
        "ManagedBy"      = "Terraform"
        "OKEclusterName" = var.cluster_name
      }
    }
    service_lb_subnet_ids = [var.service_lb_subnet_id]
  }
  type   = "BASIC_CLUSTER"
  name   = var.cluster_name
  vcn_id = var.vcn_id
}
