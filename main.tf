resource "random_pet" "pet" {
  length = var.pet_name_length
  separator = var.chosen_separator
}

output "tell_me_my_pets_name" {
  value = "c'mon ${var.prefix} ${random_pet.pet.id}, let's go"
}

resource "random_uuid" "seed" {}

resource "random_shuffle" "pet" {
  input = split(var.chosen_separator, random_pet.pet.id)
  seed = random_uuid.seed.result
}

output "tell_me_my_real_pets_name" {
  value ="c'mon ${var.prefix} ${join(var.chosen_separator, random_shuffle.pet.result)}, let's go"
}
