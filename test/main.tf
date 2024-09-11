
/*
 * TODO: complete these basic instantiations of the module, with the base purpose of
 * validating the syntax of module code automatically when pushed to version control.
 * One instance should use the minimum allowable set of inputs. The other should have
 * the full complement of inputs. You may also wish to include module outputs to
 * enforce the presence of module outputs.
 */

module "minimal" {
  source = "../"
}

module "full" {
  source = "../"

  app_name                                        = ""
  app_env                                         = ""
  aws_zones                                       = [""]
  enable_dns_hostnames                            = false
  create_nat_gateway                              = false
  use_transit_gateway                             = false
  private_subnet_cidr_blocks                      = [""]
  public_subnet_cidr_blocks                       = [""]
  transit_gateway_id                              = ""
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  vpc_cidr_block                                  = ""
  enable_ipv6                                     = true
}

provider "aws" {
  region = "us-east-1"
}

output "id" {
  value = module.full.id
}

output "ipv6_association_id" {
  value = module.full.ipv6_association_id
}

output "ipv6_cidr_block" {
  value = module.full.ipv6_cidr_block
}

output "vpc_default_sg_id" {
  value = module.full.vpc_default_sg_id
}

output "public_subnet_ids" {
  value = module.full.public_subnet_ids
}

output "public_subnet_cidr_blocks" {
  value = module.full.public_subnet_cidr_blocks
}

output "private_subnet_ids" {
  value = module.full.private_subnet_ids
}

output "private_subnet_cidr_blocks" {
  value = module.full.private_subnet_cidr_blocks
}

output "db_subnet_group_name" {
  value = module.full.db_subnet_group_name
}

output "aws_zones" {
  value = module.full.aws_zones
}

output "nat_gateway_ip" {
  value = module.full.nat_gateway_ip
}
