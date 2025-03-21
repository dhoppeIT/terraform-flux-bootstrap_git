# terraform-flux-bootstrap_git

Terraform module to manage the following Flux resources:

* flux_bootstrap_git

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "flux_bootstrap_git" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-flux-bootstrap-git/local"
  version = "1.0.0"

  path = "clusters/example"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_flux"></a> [flux](#requirement\_flux) | ~> 1.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_flux"></a> [flux](#provider\_flux) | ~> 1.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [flux_bootstrap_git.this](https://registry.terraform.io/providers/fluxcd/flux/latest/docs/resources/bootstrap_git) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_domain"></a> [cluster\_domain](#input\_cluster\_domain) | The internal cluster domain | `string` | `"cluster.local"` | no |
| <a name="input_components"></a> [components](#input\_components) | Toolkit components to include in the install manifest | `list(string)` | ```[ "source-controller", "kustomize-controller", "helm-controller", "notification-controller" ]``` | no |
| <a name="input_components_extra"></a> [components\_extra](#input\_components\_extra) | List of extra components to include in the install manifests | `list(string)` | `[]` | no |
| <a name="input_delete_git_manifests"></a> [delete\_git\_manifests](#input\_delete\_git\_manifests) | Delete manifests from git repository | `bool` | `true` | no |
| <a name="input_disable_secret_creation"></a> [disable\_secret\_creation](#input\_disable\_secret\_creation) | Use the existing secret for flux controller and don't create one from bootstrap | `bool` | `false` | no |
| <a name="input_embedded_manifests"></a> [embedded\_manifests](#input\_embedded\_manifests) | When enabled, the Flux manifests will be extracted from the provider binary instead of being downloaded from GitHub.com | `bool` | `false` | no |
| <a name="input_flux_version"></a> [flux\_version](#input\_flux\_version) | Flux version | `string` | `"v2.5.1"` | no |
| <a name="input_image_pull_secret"></a> [image\_pull\_secret](#input\_image\_pull\_secret) | Kubernetes secret name used for pulling the toolkit images from a private registry | `string` | `null` | no |
| <a name="input_interval"></a> [interval](#input\_interval) | Interval at which to reconcile from bootstrap repository | `string` | `"1m0s"` | no |
| <a name="input_keep_namespace"></a> [keep\_namespace](#input\_keep\_namespace) | Keep the namespace after uninstalling Flux components | `bool` | `false` | no |
| <a name="input_kustomization_override"></a> [kustomization\_override](#input\_kustomization\_override) | Kustomization to override configuration set by default | `string` | `null` | no |
| <a name="input_log_level"></a> [log\_level](#input\_log\_level) | Log level for toolkit components | `string` | `"info"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace scope for install manifests | `string` | `"flux-system"` | no |
| <a name="input_network_policy"></a> [network\_policy](#input\_network\_policy) | Deny ingress access to the toolkit controllers from other namespaces using network policies | `bool` | `true` | no |
| <a name="input_path"></a> [path](#input\_path) | Path relative to the repository root, when specified the cluster sync will be scoped to this path | `string` | `null` | no |
| <a name="input_recurse_submodules"></a> [recurse\_submodules](#input\_recurse\_submodules) | Configures the GitRepository source to initialize and include Git submodules in the artifact it produces | `bool` | `false` | no |
| <a name="input_registry"></a> [registry](#input\_registry) | Container registry where the toolkit images are published | `string` | `"ghcr.io/fluxcd"` | no |
| <a name="input_registry_credentials"></a> [registry\_credentials](#input\_registry\_credentials) | Container registry credentials in the format 'user:password' | `string` | `null` | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Name of the secret the sync credentials can be found in or stored to | `string` | `"flux-system"` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | A map of timeouts | `map(string)` | `{}` | no |
| <a name="input_toleration_keys"></a> [toleration\_keys](#input\_toleration\_keys) | List of toleration keys used to schedule the components pods onto nodes with matching taints | `list(string)` | `[]` | no |
| <a name="input_watch_all_namespaces"></a> [watch\_all\_namespaces](#input\_watch\_all\_namespaces) | If true watch for custom resources in all namespaces | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_repository_files"></a> [repository\_files](#output\_repository\_files) | Git repository files created and managed by the provider |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
