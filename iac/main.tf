terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "4.6.0"
    }
  }
}

provider "docker" {}
  # Start a container
  resource "docker_container" "web_server" {
    name  = "web_server_01"
    image = docker_image.nginx.image_id
  }

  # Find the latest Ubuntu precise image.
  resource "docker_image" "nginx" {
    name = "nginx:latest"
  }

  output "nginx_id" {
    value = docker_image.nginx.image_id
  }
