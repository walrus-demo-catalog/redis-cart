terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

data "kubectl_path_documents" "manifest" {
  pattern = "${path.module}/mainfest.yaml"
  vars = {
    namespace        = local.namespace 
  }
}

resource "kubectl_manifest" "manifest" {
  wait_for_rollout = false

  count     = length(data.kubectl_path_documents.manifest.documents)
  yaml_body = element(data.kubectl_path_documents.manifest.documents, count.index)
}

data "kubernetes_service" "service" {
  depends_on = [kubectl_manifest.manifest]

  metadata {
    name      = local.service_name
    namespace = local.namespace
  }
}

locals {
  name          = coalesce(var.name, "${var.walrus_metadata_service_name}")
  namespace     = coalesce(var.namespace, var.walrus_metadata_namespace_name)
  service_name  = coalesce(var.service_name, "${var.walrus_metadata_service_name}")
}
