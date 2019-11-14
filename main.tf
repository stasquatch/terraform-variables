resource "random_string" "id" {
  keepers = {
      uuid = uuid()
  }

  length = 2
}

output "welcome" {
    value = "My new name is: ${var.my_name}"
}