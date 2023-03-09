# Create a container
resource "docker_container" "foo" {
  for_each = var.containeru

  image = docker_image.debian.image_id
  name  = each.key

  # hostname = each.value.hostname
  hostname = each.key

  # Pour "tenir" éveiller mon container je passe les commandes suivantes
  # ... sinon elle se kill toute seule ... 
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}