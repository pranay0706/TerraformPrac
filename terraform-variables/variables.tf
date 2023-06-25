#Initializing a variable

variable "filename" {
  default = "/home/ec2-user/terraform/terraform-variables/file-automated.txt"
}

variable "content" {
  default = "Content created using variable concept"
}

#Declaring a variable

variable "cool_devops" {}

#Variable using Data Type

variable "content_map" {
  type = map(any)
  default = {
    "content1" = "content1 created using map"
    "content2" = "content2 created using map"
  }
}


variable "file_list" {
  type    = list(any)
  default = ["/home/ec2-user/terraform/terraform-variables/file_by_list1.txt", "/home/ec2-user/terraform/terraform-variables/file_by_list2.txt"]
}
