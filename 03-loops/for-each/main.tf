resource "null_resource" "fruits" {

  for_each = var.fruits
  provisioner "local-exec" {

     command = "echo Fruit Name -  ${each.key}"
  }
}

variable "fruits" {
  default = {
    apple = 10
    banana = 100
    oranges = 200
    }
 }

