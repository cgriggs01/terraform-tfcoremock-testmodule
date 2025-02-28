
variable "input" {
	type = number


	validation {
 		condition = var.input % 2 == 0
		error_message = "inputs must be even"
	}
}

output "doubled" {
	value = var.input * 2
}
