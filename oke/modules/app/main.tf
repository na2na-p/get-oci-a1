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

module "core_default_route_table" {
  source                   = "./core_default_route_table"
  default_route_table_name = var.core_default_route_table_name
  default_route_table_id   = module.core_vcn.default_route_table_id
  internet_gateway_id      = module.core_internet_gateway.id
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
  route_table_id              = module.core_default_route_table.id
  security_list_id            = module.core_vcn.security_list_id
  cidr_block                  = var.service_lb_subnet_cidr_block
  service_lb_subnet_dns_label = var.service_lb_subnet_dns_label
}

module "node_subnet" {
  source                = "./node_subnet"
  node_subnet_name      = var.node_subnet_name
  compartment_id        = var.compartment_id
  vcn_id                = module.core_vcn.id
  route_table_id        = module.core_route_table.id
  security_list_id      = module.node_sec_list.id
  cidr_block            = var.node_subnet_cidr_block
  node_subnet_dns_label = var.node_subnet_dns_label
}

module "kubernetes_api_endpoint_subnet" {
  source                                   = "./kubernetes_api_endpoint_subnet"
  kubernetes_api_endpoint_subnet_name      = var.kubernetes_api_endpoint_subnet_name
  compartment_id                           = var.compartment_id
  vcn_id                                   = module.core_vcn.id
  route_table_id                           = module.core_default_route_table.id
  security_list_id                         = module.core_vcn.security_list_id
  cidr_block                               = var.kubernetes_api_endpoint_subnet_cidr_block
  kubernetes_api_endpoint_subnet_dns_label = var.kubernetes_api_endpoint_subnet_dns_label
}

module "service_lb_sec_list" {
	source = "./service_lb_sec_list"
	compartment_id = var.compartment_id
	vcn_id = module.core_vcn.id
	service_lb_sec_list_name = var.service_lb_sec_list_name
}

module "node_sec_list" {
	source = "./node_sec_list"
	compartment_id = var.compartment_id
	vcn_id = module.core_vcn.id
	node_sec_list_name = var.node_sec_list_name
}
