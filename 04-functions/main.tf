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

output "sample2" {
  value = lookup(var.sample2, "a1", "dummy")
}



