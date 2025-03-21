variable "cluster_domain" {
  type        = string
  default     = "cluster.local"
  description = "The internal cluster domain"
}

variable "components" {
  type = list(string)
  default = [
    "source-controller",
    "kustomize-controller",
    "helm-controller",
    "notification-controller"
  ]
  description = "Toolkit components to include in the install manifest"
}

variable "components_extra" {
  type        = list(string)
  default     = []
  description = "List of extra components to include in the install manifests"
}

variable "delete_git_manifests" {
  type        = bool
  default     = true
  description = "Delete manifests from git repository"
}

variable "disable_secret_creation" {
  type        = bool
  default     = false
  description = "Use the existing secret for flux controller and don't create one from bootstrap"
}

variable "embedded_manifests" {
  type        = bool
  default     = false
  description = "When enabled, the Flux manifests will be extracted from the provider binary instead of being downloaded from GitHub.com"
}

variable "image_pull_secret" {
  type        = string
  default     = null
  description = "Kubernetes secret name used for pulling the toolkit images from a private registry"
}

variable "interval" {
  type        = string
  default     = "1m0s"
  description = "Interval at which to reconcile from bootstrap repository"
}

variable "keep_namespace" {
  type        = bool
  default     = false
  description = "Keep the namespace after uninstalling Flux components"
}

variable "kustomization_override" {
  type        = string
  default     = null
  description = "Kustomization to override configuration set by default"
}

variable "log_level" {
  type        = string
  default     = "info"
  description = "Log level for toolkit components"
}

variable "namespace" {
  type        = string
  default     = "flux-system"
  description = "The namespace scope for install manifests"
}

variable "network_policy" {
  type        = bool
  default     = true
  description = "Deny ingress access to the toolkit controllers from other namespaces using network policies"
}

variable "path" {
  type        = string
  default     = null
  description = "Path relative to the repository root, when specified the cluster sync will be scoped to this path"
}

variable "recurse_submodules" {
  type        = bool
  default     = false
  description = "Configures the GitRepository source to initialize and include Git submodules in the artifact it produces"
}

variable "registry" {
  type        = string
  default     = "ghcr.io/fluxcd"
  description = "Container registry where the toolkit images are published"
}

variable "registry_credentials" {
  type        = string
  default     = null
  description = "Container registry credentials in the format 'user:password'"
}

variable "secret_name" {
  type        = string
  default     = "flux-system"
  description = "Name of the secret the sync credentials can be found in or stored to"
}

variable "timeouts" {
  type        = map(string)
  default     = {}
  description = "A map of timeouts"
}

variable "toleration_keys" {
  type        = list(string)
  default     = []
  description = "List of toleration keys used to schedule the components pods onto nodes with matching taints"
}

variable "flux_version" {
  type        = string
  default     = "v2.5.1"
  description = "Flux version"
}

variable "watch_all_namespaces" {
  type        = bool
  default     = true
  description = "If true watch for custom resources in all namespaces"
}
