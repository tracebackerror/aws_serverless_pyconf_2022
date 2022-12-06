resource "kubernetes_namespace" "pyconf-hyderabad-2022" {
  metadata {
    name = "pyconf"
  }
}

resource "kubernetes_deployment" "pyconf-hyderabad-2022" {
  metadata {
    name = "pyconf-hyd-2022"
    labels = {
      test = "MyExampleApp"
    }
    namespace = "pyconf"
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "MyExampleApp"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "example"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}