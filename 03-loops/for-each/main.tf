resource "null_resource" "fruits" {

  for_each = var.fruits
  provisioner "local-exec" {

     command = "echo Fruit Name -  ${each.key} - ${each.value}"
  }
}

resource "null_resource" "fruits1" {

  for_each = var.fruits1
  provisioner "local-exec" {
      command = "echo Fruit Name -  ${each.key} - ${each.value["count"]}"
  }
}

variable "fruits" {
  default = {
    apple = 10
    banana = 100
    oranges = 200
    }
 }


variable "fruits1" {

  default = {
    apple = {
      name = "apple"
      count = 10
    }
   oranges = {
         name = "oranges"
         count = 200
       }
       banana = {
             name = "banana"
             count = 100
           }
   }
 }

 //you can see fruits and fruits 1 prints same output but if you want to give moe input you can use fruits1.



