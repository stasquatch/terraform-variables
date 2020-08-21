locals {
  short_name = title(element(reverse(split(var.chosen_separator, random_pet.pet.id)), 0))
}
resource "random_pet" "pet" {
  length = var.pet_name_length
  separator = var.chosen_separator
}

output "tell_me_my_pets_name" {
  value = "c'mon ${var.prefix} ${random_pet.pet.id}, let's go"
}

output "what_my_friends_say" {
  value ="Hey ${local.short_name}, do the renegade!"
}
