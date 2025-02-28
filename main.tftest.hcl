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

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  input = 2
}

run "input_validation" {
  variables {
    input = 3
  }

  expect_failures = [
    var.input
  ]
}

run "output_validation" {
  variables {
    input = 2
  }

  assert {
    condition     = output.doubled == 4
    error_message = "output should be double the input"
  }
}

run "input_validation" {
  variables {
    input = 4
  }

  assert {
    condition     = var.input == 4
    error_message = "input should be 4"
  }
}

run "output_validation" {
  variables {
    input = 4
  }

  assert {
    condition     = output.doubled == 8
    error_message = "output should be double the input"
  }
}

This test file contains four test scenarios. The first scenario tests that the validation rule on the `input` variable correctly fails when an odd number is provided. The second scenario tests that the `doubled` output correctly doubles the `input` variable when an even number is provided. The third and fourth scenarios repeat these tests with a different even number.