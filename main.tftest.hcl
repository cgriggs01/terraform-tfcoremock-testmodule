run "valid" {
	variables {
		input = 2
	}

	assert {
		condition = output.doubled == 4
		error_message = "wrong output value"
	}

	assert {
		condition = output.doubled == var.input * 2
		error_message = "wrong output value"
	}
}

run "invalide" {
	variables {
		input = 2
	}

	assert {
		condition = output.doubled == 6
		error_message = "this should fail"
	}

}

run "expect_failure" {

	//command = plan

	variables {
	  input = 3
	}

	expect_failures = [var.input]
}