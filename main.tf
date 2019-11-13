module "test-module" {
    source = "./test-module"
    my_name = "Stacy"
}

output "testing" {
    value = "My name is: ${module.test-module.my_name}"
}