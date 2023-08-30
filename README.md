## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubectl_manifest.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |
| [kubectl_path_documents.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/data-sources/path_documents) | data source |
| [kubernetes_service.service](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/service) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the deployment resource. Auto-generated if empty. | `string` | `"redis-cart"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace to deploy. Auto-generated if empty. | `string` | `""` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Service name | `string` | `"redis-cart"` | no |
| <a name="input_walrus_metadata_namespace_name"></a> [walrus\_metadata\_namespace\_name](#input\_walrus\_metadata\_namespace\_name) | Walrus metadata namespace name. | `string` | `""` | no |
| <a name="input_walrus_metadata_service_name"></a> [walrus\_metadata\_service\_name](#input\_walrus\_metadata\_service\_name) | Walrus metadata service name. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_ip"></a> [service\_ip](#output\_service\_ip) | Service IP |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Service name |
