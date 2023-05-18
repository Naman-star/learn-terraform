resource "null_resource" "null" {
  count = 10
}
//for above command it will run 10 times



resource "null_resource" "fruits" {
  count = length(var.fruits)
}

variable "fruits" {
  default = ["apple","banana","orange"]
}

// for above command row 7-11  3 fruits are there so 3 times its running but it wont show fruit names u can check by running

resource "null_resource" "fruits" {
  count = length(var.fruits)
  provisioner "local-exe" {
     command = "echo Fruit Name - ${var.fruits[count.index]}"
  }
}
variable "fruits" {
  default = ["apple","banana","orange"]
}
