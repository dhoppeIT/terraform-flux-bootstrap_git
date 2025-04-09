# git
variable "url" {
  type        = string
  description = "URL of Git repository to bootstrap from"
}

variable "author_email" {
  type        = string
  default     = null
  description = "Author email for Git commit"
}

variable "author_name" {
  type        = string
  default     = "Flux"
  description = "Author name for Git commits"
}

variable "branch" {
  type        = string
  default     = "main"
  description = "Branch of the repository to reconcile from"
}

variable "commit_message_appendix" {
  type        = string
  default     = null
  description = "String to add to the commit messages"
}

variable "gpg_key_id" {
  type        = string
  default     = null
  description = "Key ID for selecting a particular GPG key"
}

variable "gpg_key_ring" {
  type        = string
  default     = null
  description = "Path to the GPG key ring for signing commit"
}

variable "gpg_passphrase" {
  type        = string
  default     = null
  sensitive   = true
  description = "Passphrase for decrypting GPG private key"
}

# variable "http_allow_insecure_http" {
#   type        = bool
#   default     = false
#   description = "Allows http Git URL connections"
# }
#
# variable "http_certificate_authority" {
#   type        = string
#   default     = null
#   description = "Certificate authority to validate self-signed certificates"
# }
#
# variable "http_password" {
#   type        = string
#   default     = null
#   sensitive   = true
#   description = "Password for basic authentication"
# }
#
# variable "http_username" {
#   type        = string
#   default     = null
#   description = "Username for basic authentication"
# }

variable "ssh_hostkey_algos" {
  type        = list(string)
  default     = []
  description = "The list of hostkey algorithms to use for SSH connections, arranged from most preferred to the least"
}

variable "ssh_password" {
  type        = string
  default     = null
  sensitive   = true
  description = "Password of the SSH private key"
}

variable "ssh_private_key" {
  type        = string
  default     = null
  sensitive   = true
  description = "Private key used for authenticating to the Git SSH server"
}

variable "ssh_username" {
  type        = string
  default     = null
  description = "Username for Git SSH server"
}

# kubernetes
variable "client_certificate" {
  type        = string
  default     = null
  description = "PEM-encoded client certificate for TLS authentication"
}

variable "client_key" {
  type        = string
  default     = null
  description = "PEM-encoded client certificate key for TLS authentication"
}

variable "cluster_ca_certificate" {
  type        = string
  default     = null
  description = "PEM-encoded root certificates bundle for TLS authentication"
}

variable "config_context" {
  type        = string
  default     = null
  description = "Context to choose from the config file"
}

variable "config_context_auth_info" {
  type        = string
  default     = null
  description = "Authentication info context of the kube config"
}

variable "config_context_cluster" {
  type        = string
  default     = null
  description = "Cluster context of the kube config"
}

variable "config_path" {
  type        = string
  default     = null
  description = "Path to the kube config file"
}

variable "config_paths" {
  type        = list(string)
  default     = []
  description = "A list of paths to kube config files"
}

# variable "exec_api_version" {
#   type        = string
#   default     = null
#   description = "Kubernetes client authentication API Version"
# }
#
# variable "exec_command" {
#   type        = string
#   default     = null
#   description = "Client authentication exec command"
# }
#
# variable "exec_args" {
#   type        = list(string)
#   default     = []
#   description = "Client authentication exec command arguments"
# }
#
# variable "exec_env" {
#   type        = map(string)
#   default     = {}
#   description = "Client authentication exec environment variables"
# }

variable "host" {
  type        = string
  default     = null
  description = "The hostname (in form of URI) of Kubernetes master"
}

variable "insecure" {
  type        = bool
  default     = false
  description = "Whether server should be accessed without verifying the TLS certificate"
}

variable "password" {
  type        = string
  default     = null
  sensitive   = true
  description = "The password to use for HTTP basic authentication when accessing the Kubernetes master endpoint"
}

variable "proxy_url" {
  type        = string
  default     = null
  description = "URL to the proxy to be used for all API requests"
}

variable "token" {
  type        = string
  default     = null
  description = "Token to authenticate an service account"
}

variable "username" {
  type        = string
  default     = null
  description = "The username to use for HTTP basic authentication when accessing the Kubernetes master endpoint"
}
