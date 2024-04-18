output "id" {
  description = "The OCID of the Security List."
  value       = oci_core_security_list.kubernetes_api_endpoint_sec_list.id
}
