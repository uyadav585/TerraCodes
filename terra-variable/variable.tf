variable "filename" {
	default = "/home/ubuntu/terraform_practice/terra-variable/test.automated.txt"
}

variable "content" {
	default = "this demo test"
}


variable "devops_op_trainer" {}


variable "content_map" {
	type = map
	default = {
		"umang" = "my name"
		"yadav" = "my surname"
}
}
