output "sample_string" {
  value = var.sample_string
}

#in above case we are printing the variable.if variable is a combination of some string then following
#      is the syntax. ${} is mandatory if we include the variable inside a string

output "sample_string1" {
  value = "value of sample_string = ${var.sample_string}"
}

##values from list
##second value in list
output "sample_list2" {
  value = var.sample_list[1]
}