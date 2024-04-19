output "id" {
  description = "The OCID of the Security List."
  value       = oci_core_security_list.pod_subnet_sec_list.id
}
