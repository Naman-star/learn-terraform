variable "sample_string" {
   default = "Hello World"
}
#shell scriptig equivalent sample_string="Hello World"
#to print in shell script we use echo, following is the syntax in shell
#echo $sample_string

variable "sample_number" {
  default = 100
}

# 10.6 is also a number in terraform not floating number

variable "sample_boolean" {
   default = true
}

#Booleans are true or false

#Booleans and numbers does not need to be quoted.only strings need to be quoted that to be with double
# quotes. Terraform does support for single quotes.

#variable types
# 1 .so far we have seen is Default variable type

# 2  .we have list variable type, Meaning single variable can hold multiple values{data types}
variable "sample_list" {
   default = [
      100,
      "hello",
      true,
      123
      ]
    }

##Data type  inside the list does not matter in terraform.
##to access we dont need to call the function like shell scripting
##output for above row 27-34 will be there in outputs.tf row 14
