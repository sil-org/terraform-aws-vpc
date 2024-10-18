# Terraform module for AWS VPC

This module is used to create a VPC along with the necessary configuration to be useful. It was
previously published at
https://github.com/silinternational/terraform-modules/tree/main/aws/vpc.

## What this does

- Create VPC named after `app_name` and `app_env`
- Create public and private subnets for each `aws_zones` specified
- Provision a Internet Gateway and configure public subnets to route through it
- Provision a NAT Gateway (or use an existing Transit Gateway) and configure private subnets to route through it
- Create a DB subnet group including all private subnets
- Optionally allocate IPv6 CIDR blocks, egress-only internet gateway, and default IPv6 routes

This module is published in [Terraform Registry](https://registry.terraform.io/modules/silinternational/vpc/aws/latest).

## Usage Example

```hcl
module "this" {
  source  = "silinternational/vpc/aws"
  version = "1.0.1" // this may not reflect the latest version available

  app_name  = var.app_name
  aws_zones = var.aws_zones
}

provider "aws" {
  region = "us-east-1"
}
```
