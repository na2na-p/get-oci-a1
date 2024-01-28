module "instance" {


  source              = "../modules/instance"
  compartment_id      = var.compartment_id
  ssh_authorized_keys = var.ssh_authorized_keys
}
