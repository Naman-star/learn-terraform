resource "null_resource" "fruits" {
  //count = length(var.fruits)
  for_each = var.fruits
  provisioner "local-exec" {
     //command = "echo Fruit Name - ${var.fruits[count.index]}"
     //provisioner is another block which u can run in any resource after creating resource u wanted to deal with that u can go with provisioner
     command = "echo Fruit Name -  ${each.key}
  }
}

variable "fruits" {
  default = {
    apple = 10
    banana = 100
    oranges = 200
    }
 }

//variable "fruits" {
//  default = {
//    apple {
//      name = "apple"
//      count = 10
//    }
//    orange {
//      name = "orange"
//      count = 200
//    }

//    banana {
//      name = "banana"
//      count = 10
//    }
//  }
//}



