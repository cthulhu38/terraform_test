# Pulls the image
resource "docker_image" "debian" {
  name = "debian:latest"
}