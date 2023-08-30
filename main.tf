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

locals {
  namespace     = coalesce(var.namespace, var.walrus_metadata_namespace_name)
}
