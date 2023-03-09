terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }

  required_version = ">= 1.3.0, < 2.0.0"
}

provider "docker" {
  # Pour Linux :
  # Attention, lancer les commandes TF en sudoer
  host = "unix:///var/run/docker.sock"
}

#####
#
# Provider Docker pour Windows :
#
#####

#  provider "docker" {
#   host = "tcp://localhost:2375"
# }

#####

# Pour réaliser un test des variables ... 
#output "test_output" {
#  value = var.test
#}
#output "test_output2" {
#  value = var.containeru 
#}