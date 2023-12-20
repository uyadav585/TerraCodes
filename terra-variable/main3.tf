resource "local_file" "devops" {
	filename = "/home/ubuntu/terraform_practice/terra-variable/devops_test.txt"
	content = var.content_map["umang"]
}

resource "local_file" "test-var" {
	filename = var.filename
	content = var.content_map["yadav"]
}

output "devops_op_trainer" {
	value = var.devops_op_trainer
}
