# Example

The configuration in this directory creates:

* flux_bootstrap_git

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_flux"></a> [flux](#requirement\_flux) | ~> 1.5 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_flux_bootstrap_git"></a> [flux\_bootstrap\_git](#module\_flux\_bootstrap\_git) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_author_email"></a> [author\_email](#input\_author\_email) | Author email for Git commit | `string` | `null` | no |
| <a name="input_author_name"></a> [author\_name](#input\_author\_name) | Author name for Git commits | `string` | `"Flux"` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | Branch of the repository to reconcile from | `string` | `"main"` | no |
| <a name="input_client_certificate"></a> [client\_certificate](#input\_client\_certificate) | PEM-encoded client certificate for TLS authentication | `string` | `null` | no |
| <a name="input_client_key"></a> [client\_key](#input\_client\_key) | PEM-encoded client certificate key for TLS authentication | `string` | `null` | no |
| <a name="input_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#input\_cluster\_ca\_certificate) | PEM-encoded root certificates bundle for TLS authentication | `string` | `null` | no |
| <a name="input_commit_message_appendix"></a> [commit\_message\_appendix](#input\_commit\_message\_appendix) | String to add to the commit messages | `string` | `null` | no |
| <a name="input_config_context"></a> [config\_context](#input\_config\_context) | Context to choose from the config file | `string` | `null` | no |
| <a name="input_config_context_auth_info"></a> [config\_context\_auth\_info](#input\_config\_context\_auth\_info) | Authentication info context of the kube config | `string` | `null` | no |
| <a name="input_config_context_cluster"></a> [config\_context\_cluster](#input\_config\_context\_cluster) | Cluster context of the kube config | `string` | `null` | no |
| <a name="input_config_path"></a> [config\_path](#input\_config\_path) | Path to the kube config file | `string` | `null` | no |
| <a name="input_config_paths"></a> [config\_paths](#input\_config\_paths) | A list of paths to kube config files | `list(string)` | `[]` | no |
| <a name="input_gpg_key_id"></a> [gpg\_key\_id](#input\_gpg\_key\_id) | Key ID for selecting a particular GPG key | `string` | `null` | no |
| <a name="input_gpg_key_ring"></a> [gpg\_key\_ring](#input\_gpg\_key\_ring) | Path to the GPG key ring for signing commit | `string` | `null` | no |
| <a name="input_gpg_passphrase"></a> [gpg\_passphrase](#input\_gpg\_passphrase) | Passphrase for decrypting GPG private key | `string` | `null` | no |
| <a name="input_host"></a> [host](#input\_host) | The hostname (in form of URI) of Kubernetes master | `string` | `null` | no |
| <a name="input_http_allow_insecure_http"></a> [http\_allow\_insecure\_http](#input\_http\_allow\_insecure\_http) | Allows http Git URL connections | `bool` | `false` | no |
| <a name="input_http_certificate_authority"></a> [http\_certificate\_authority](#input\_http\_certificate\_authority) | Certificate authority to validate self-signed certificates | `string` | `null` | no |
| <a name="input_http_password"></a> [http\_password](#input\_http\_password) | Password for basic authentication | `string` | `null` | no |
| <a name="input_http_username"></a> [http\_username](#input\_http\_username) | Username for basic authentication | `string` | `null` | no |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | Whether server should be accessed without verifying the TLS certificate | `bool` | `false` | no |
| <a name="input_password"></a> [password](#input\_password) | The password to use for HTTP basic authentication when accessing the Kubernetes master endpoint | `string` | `null` | no |
| <a name="input_proxy_url"></a> [proxy\_url](#input\_proxy\_url) | URL to the proxy to be used for all API requests | `string` | `null` | no |
| <a name="input_ssh_hostkey_algos"></a> [ssh\_hostkey\_algos](#input\_ssh\_hostkey\_algos) | The list of hostkey algorithms to use for SSH connections, arranged from most preferred to the least | `list(string)` | `[]` | no |
| <a name="input_ssh_password"></a> [ssh\_password](#input\_ssh\_password) | Password of the SSH private key | `string` | `null` | no |
| <a name="input_ssh_private_key"></a> [ssh\_private\_key](#input\_ssh\_private\_key) | Private key used for authenticating to the Git SSH server | `string` | `null` | no |
| <a name="input_ssh_username"></a> [ssh\_username](#input\_ssh\_username) | Username for Git SSH server | `string` | `null` | no |
| <a name="input_token"></a> [token](#input\_token) | Token to authenticate an service account | `string` | `null` | no |
| <a name="input_url"></a> [url](#input\_url) | URL of Git repository to bootstrap from | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The username to use for HTTP basic authentication when accessing the Kubernetes master endpoint | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_repository_files"></a> [repository\_files](#output\_repository\_files) | Git repository files created and managed by the provider |
<!-- END_TF_DOCS -->
