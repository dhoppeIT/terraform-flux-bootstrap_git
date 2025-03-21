resource "flux_bootstrap_git" "this" {
  cluster_domain          = var.cluster_domain
  components              = var.components
  components_extra        = var.components_extra
  delete_git_manifests    = var.delete_git_manifests
  disable_secret_creation = var.disable_secret_creation
  embedded_manifests      = var.embedded_manifests
  image_pull_secret       = var.image_pull_secret
  interval                = var.interval
  keep_namespace          = var.keep_namespace
  kustomization_override  = var.kustomization_override
  log_level               = var.log_level
  namespace               = var.namespace
  network_policy          = var.network_policy
  path                    = var.path
  recurse_submodules      = var.recurse_submodules
  registry                = var.registry
  registry_credentials    = var.registry_credentials
  secret_name             = var.secret_name
  timeouts                = var.timeouts
  toleration_keys         = var.toleration_keys
  version                 = var.flux_version
  watch_all_namespaces    = var.watch_all_namespaces
}
