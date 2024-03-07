variable "users" {
  type = map(object({
    name = string
    path = string
    groups = list(string)
  }))
}

variable "groups" {
  type = map(object({
    name = string
    path = string
  }))
}