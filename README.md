# usecase10-focalboard-docker-alb--
focal board using Docker on an AWS EC2 instance and ALB

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | ./modules/alb | n/a |
| <a name="module_focal_instance"></a> [focal\_instance](#module\_focal\_instance) | ./modules/focal_instance | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block | `string` | `"192.168.0.0/16"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | value | `string` | `"dev"` | no |
| <a name="input_my-amiid"></a> [my-amiid](#input\_my-amiid) | ID of vpc | `string` | `"ami-084568db4383264d4"` | no |
| <a name="input_my-instance_type"></a> [my-instance\_type](#input\_my-instance\_type) | EC2 instance type | `string` | `"t2.medium"` | no |
| <a name="input_my-keyname"></a> [my-keyname](#input\_my-keyname) | EC2 instance key pair | `string` | `"Hcl-prac-training"` | no |
| <a name="input_name"></a> [name](#input\_name) | value | `string` | `"focal-test"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->