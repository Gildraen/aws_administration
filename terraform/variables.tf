variable "users" {
  type = map(object({
    name = string
    path = string
  }))
}

