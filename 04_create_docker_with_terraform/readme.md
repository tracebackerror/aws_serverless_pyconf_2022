### Create Terraform Infrastructure with Docker
In the "Code Editor" tab, open the main.tf file.

Copy and paste the following configuration. Save your changes by clicking on the icon next to the filename above the editor window.

```
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "pyconf_hyderabad_2022"
  ports {
    internal = 80
    external = 8000
  }
}
```


In the "Terminal" tab, initialize the project, which downloads a plugin that allows Terraform to interact with Docker.

```
terraform init
```

To Plan and Visualise

```asciidoc
terraform plan

terraform graph | dot -Tpng > graph.png
```

Provision the NGINX server container with apply. When Terraform asks you to confirm, type yes and press ENTER.
```asciidoc
terraform apply
```

Verify NGINX instance

```
docker ps
localhost:8000
```

Destroy resource
```asciidoc
terraform destroy
```