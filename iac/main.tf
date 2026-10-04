terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "4.6.0"
    }
  }
}

provider "docker" {
  # Start a container
  # resource "docker_container" "ubuntu" {
  #   name  = "foo"
  #   image = docker_image.ubuntu.image_id
  # }

  # Find the latest Ubuntu precise image.
  resource "docker_image" "ubuntu" {
    name = "ubuntu:precise"
  }

  output "image_id" {
    value = docker_image.ubuntu.image_id
  }
}