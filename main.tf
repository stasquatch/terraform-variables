resource "random_string" "id" {
  keepers = {
      uuid = uuid()
  }

  length = 2
  my_name = "Boo Higgins"
}

output "welcome" {
    value = "My new name is: ${var.my_name}"
}