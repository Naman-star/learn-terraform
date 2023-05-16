variable "sample_string" {
   default = "Hello World"
}
#shell scriptig equivalent sample_string="Hello World"
#to print in shell script we use echo, following is the syntax in shell
#echo $sample_string


output "sample_string" {
  value = var.sample_string
}

#in above case we are printing the variable.if variable is a combination of some string then following
#      is the syntax. ${} is mandatory if we include the variable inside a string

output "sample_string1" {
  value = "value of sample_string = ${var.sample_string}"
}