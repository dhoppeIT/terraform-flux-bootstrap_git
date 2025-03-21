provider "flux" {
  git = {
    url                     = var.url
    author_email            = var.author_email
    author_name             = var.author_name
    branch                  = var.branch
    commit_message_appendix = var.commit_message_appendix
    gpg_key_id              = var.gpg_key_id
    gpg_key_ring            = var.gpg_key_ring
    gpg_passphrase          = var.gpg_passphrase
    http = regex("([a-z]+):", var.url) == "http" ? {
      allow_insecure_http   = var.http_allow_insecure_http
      certificate_authority = var.http_certificate_authority
      password              = var.http_password
      username              = var.http_username
    } : null
    ssh = regex("([a-z]+):", var.url) == "ssh" ? {
      hostkey_algos = var.ssh_hostkey_algos
      password      = var.ssh_password
      private_key   = var.ssh_private_key
      username      = var.ssh_username
    } : null
  }

  kubernetes = {
    client_certificate       = var.client_certificate
    client_key               = var.client_key
    cluster_ca_certificate   = var.cluster_ca_certificate
    config_context           = var.config_context
    config_context_auth_info = var.config_context_auth_info
    config_context_cluster   = var.config_context_cluster
    config_path              = var.config_path
    config_paths             = var.config_paths
    # exec = {
    #   api_version = var.exec_api_version
    #   command     = var.exec_command
    #   args        = var.exec_args
    #   env         = var.exec_env
    # }
    host      = var.host
    insecure  = var.insecure
    password  = var.password
    proxy_url = var.proxy_url
    token     = var.token
    username  = var.username
  }
}
