resource "oci_containerengine_node_pool" "node_pool" {
  freeform_tags = {
    "ManagedBy" = "Terraform"
		"OKEnodePoolName" = var.node_pool_name
  }
  compartment_id = var.compartment_id
  name           = var.node_pool_name
  cluster_id     = var.cluster_id

	initial_node_labels {
		key = "ManagedBy"
		value = "Terraform"
	}
	kubernetes_version = var.kubernetes_version

	node_config_details {
		freeform_tags = {
			"ManagedBy" = "Terraform"
			"OKEnodePoolName" = var.node_pool_name
		}
		node_pool_pod_network_option_details {
			cni_type = "OCI_VCN_IP_NATIVE"
			pod_subnet_ids = [var.pod_subnet_id]
		}
		placement_configs {
			availability_domain = var.availability_domain
			subnet_id = var.node_subnet_id
		}
		size = var.node_pool_size
	}
	node_eviction_node_pool_settings {
		eviction_grace_duration = var.eviction_grace_duration
	}
	node_shape = var.node_shape
	node_shape_config {
		memory_in_gbs = var.memory_in_gbs
		ocpus = var.ocpus
	}

	node_source_details {
		image_id = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaa7gs5glicqv3j77j6ehlr3rj2xb2xwk2ky6hu7nhtyrz2cxnqy3fq"
		source_type = "IMAGE"
	}
}
