output "id" {
  description = "The ID of this resource"
  value       = module.flux_bootstrap_git.id
}

output "repository_files" {
  description = "Git repository files created and managed by the provider"
  value       = module.flux_bootstrap_git.repository_files
}
