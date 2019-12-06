resource "random_pet" "pet" {
  length = var.pet_name_length
  separator = var.chosen_separator
  prefix = var.TF_VAR_prefix
}

output "tell_me_my_pets_name" {
  value = "c'mon ${random_put.pet.prefix} ${random_pet.pet.id}"
}
