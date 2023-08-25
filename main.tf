resource "local_file" "my_bikes" {
    filename = each.value
    content = "i love motoGP"
    for_each = var.filename
}
variable "filename" {
    type = set(string)
    default = [
        "bikes.txt",
        "cars.txt",
        "both.txt"
    ]
}
