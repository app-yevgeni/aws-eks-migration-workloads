resource "kubernetes_namespace" "migration" {
  metadata {
    name = "migration"
    labels = {
      "app.kubernetes.io/managed-by" = "terraform"
    }
  }

  lifecycle {
    prevent_destroy = false
    ignore_changes = all
  }
}
