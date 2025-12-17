<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=6.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=6.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_attachment.front_end](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/autoscaling_attachment) | resource |
| [aws_autoscaling_group.front_end](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_launch_template.front_end](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.front_end](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.front_end](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.front_end](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_security_group.ec2_sg](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.nlb_sg](https://registry.terraform.io/providers/hasicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_port"></a> [app\_port](#input\_app\_port) | The port on which the application will run | `number` | `80` | no |
| <a name="input_autoscale_group_min_max"></a> [autoscale\_group\_min\_max](#input\_autoscale\_group\_min\_max) | The minimum and maximum size of the autoscaling group | <pre>object({<br/>    min = number<br/>    max = number<br/>  })</pre> | n/a | yes |
| <a name="input_autoscale_group_size"></a> [autoscale\_group\_size](#input\_autoscale\_group\_size) | The desired size of the autoscaling group | `number` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The deployment environment (e.g., dev, staging, prod) | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The EC2 instance type for the web front-end | `string` | `"t3.micro"` | no |
| <a name="input_launch_template_ami"></a> [launch\_template\_ami](#input\_launch\_template\_ami) | The AMI ID for the launch template | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix for resource names | `string` | n/a | yes |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | List of public subnet IDs for the web front-end | `list(string)` | n/a | yes |
| <a name="input_user_data_contents"></a> [user\_data\_contents](#input\_user\_data\_contents) | User data script contents for the launch template | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC where resources will be deployed | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_autoscaling_group_name"></a> [autoscaling\_group\_name](#output\_autoscaling\_group\_name) | The name of the EC2 autoscalig group |
| <a name="output_lb_public_dns"></a> [lb\_public\_dns](#output\_lb\_public\_dns) | The DNS name of the Network Load Balancer |
<!-- END_TF_DOCS -->