variable "pet_name_length" {
    type = number
    description = "the number of words in your pet's name"
    default = 4
}

variable "chosen_separator" {
    type = string
    description = "the delimiter of your pet's name"
    default = " "
}

variable "prefix" {
    type = string
}
