variable "containeru" {
  type = map(object({
    hostname = string
  }))
  default = {

  }
}