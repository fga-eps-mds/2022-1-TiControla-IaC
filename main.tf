variable "do_token" {
  type = string
}
variable "k8s_name" {
  type = string
}
variable "region" {
  type = string
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "k8s_ticontrola" {
  name   = var.k8s_name
  region = var.region
  # latest slug from the command 'doctl kubernetes options versions'
  version = "1.23.9-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 1
  }
}

resource "local_file" "kube_config" {
  content  = digitalocean_kubernetes_cluster.k8s_ticontrola.kube_config.0.raw_config
  filename = "kube_config.yaml"
}