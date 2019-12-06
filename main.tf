resource "random_pet" "pet" {
  length = var.pet_name_length
  separator = var.chosen_separator
}

output "tell_me_my_pets_name" {
  value = "c'mon ${var.TF_VAR_prefix} ${random_pet.pet.id}"
}
