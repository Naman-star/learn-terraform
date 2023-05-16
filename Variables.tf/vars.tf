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
#all the tf files it can consider as one terraform files it will load and run

#3. variable type- we have a dictionary, Meaning single variable will have multiple values , and each value is going to have seperate name.type

variable "sample_dict" {
 default = {
    number1 = 100
    string1 = "hello"
    boolean =true
    number2 = 123
 }
}

#this is the most preffered variable over the list when we declare the data because we dont have to call by its index
# we can just call by their key names for above example the keys are number1,string1,boolean,number

variable "env" {}
variable "auto_num1" {}
variable "sample1" {}