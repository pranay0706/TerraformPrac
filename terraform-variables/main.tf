#resource without using variable

resource "local_file" "myfile" {
  filename = var.file_list[0]
  content  = var.content_map["content1"]
}


#resource with variable

resource "local_file" "new_file" {
  filename = var.file_list[1]
  content  = var.content_map["content2"]
}

output "devops_value" {
  value = var.cool_devops
}


