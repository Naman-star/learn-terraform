#convert lower case to upper case
variable "sample" {
  default = "abcxyz"
}

output "sample" {
  value = upper(var.sample)
}


variable "sample1" {
  default = [ "abc" , "xyz"]
}

variable "sample2" {
  default = {
    xyz = 100
    abc = 200

  }
}

#print first value line var.sample[0] with a function.sample1


output "sample1" {
  value = element(var.sample1, 0)
}

output "sample3" {
  value = var.sample1[1]
}

output "sample2" {
  value = lookup(var.sample2, "a1", "dummy")
}
#This loopup function first look for whether a1 is there or not if its not there it will print the next given value that is dummy.
#without lookup function if u try 30 row line it shows error because a1 doesnt exist.



