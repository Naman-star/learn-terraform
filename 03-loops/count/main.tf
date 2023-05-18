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

resource "null_resource" "fruits1" {
  count = length(var.fruits)

  provisioner "local-exec" {
     command = "echo Fruit Name - ${var.fruits[count.index]}"
     //provisioner is another block which u can run in any resource after creating resource u wanted to deal with that u can go with provisioner
  }
}
variable "fruits1" {
  default = ["apple","banana","orange"]
}
