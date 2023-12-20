resource "local_file" "umang" {
	filename = "/home/ubuntu/terraform_practice/terra-local/test1.txt"
	content = "gand far denge bholua"
}

resource "random_string" "rand_str" {
length = 16
special = true
override_special = "?<>{}[]!@#$%^&*()"
}

output "rand_str" {
value = random_string.rand_str[*].result
}

