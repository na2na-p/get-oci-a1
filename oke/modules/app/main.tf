module "core_vcn" {
  source         = "./core_vcn"
  compartment_id = var.compartment_id
  vcn_cidr_block = var.core_vcn_cidr_block
  vcn_name       = var.core_vcn_name
  dns_label      = var.core_vcn_dns_label
}

module "core_internet_gateway" {
  source                = "./core_internet_gateway"
  compartment_id        = var.compartment_id
  vcn_id                = module.core_vcn.id
  internet_gateway_name = var.core_internet_gateway_name
}

module "core_nat_gateway" {
  source           = "./core_nat_gateway"
  compartment_id   = var.compartment_id
  vcn_id           = module.core_vcn.id
  nat_gateway_name = var.nat_gateway_name
}

module "core_service_gateway" {
  source               = "./core_service_gateway"
  compartment_id       = var.compartment_id
  service_gateway_name = var.core_service_gateway
  vcn_id               = module.core_vcn.id
}

module "core_route_table" {
  source             = "./core_route_table"
  compartment_id     = var.compartment_id
  vcn_id             = module.core_vcn.id
  nat_gateway_id     = module.core_nat_gateway.id
  service_gateway_id = module.core_service_gateway.id
  route_table_name   = var.core_route_table_name
}

module "service_lb_subnet" {
  source                      = "./service_lb_subnet"
  service_lb_subnet_name      = var.service_lb_subnet_name
  compartment_id              = var.compartment_id
  vcn_id                      = module.core_vcn.id
  route_table_id              = module.core_route_table.id
  security_list_id            = module.core_vcn.security_list_id
  cidr_block                  = var.service_lb_subnet_cidr_block
  service_lb_subnet_dns_label = var.service_lb_subnet_dns_label
}
