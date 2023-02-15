# Create a container
resource "docker_container" "foo" {
  image = docker_image.debian.image_id
  name  = "foo"
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}