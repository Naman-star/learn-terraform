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

#print number1 in sample_dict

output "sample_dict_num1" {
  value = var.sample_dict["number1"]
}


output "sample_dict_bool" {
  value = var.sample_dict["boolean"]
}

output "env" {
  value = var.env
}

output "auto_num1" {
 value = var.auto_num1
}


output "sample1" {
 value = var.sample1
}