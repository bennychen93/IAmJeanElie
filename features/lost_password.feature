Feature: lost password criteria

Scenario: clicking lost password
	When I press "Forgot your password?"
	And I fill in "user_email" with "loltemp1234@gmail.com"
	And I press "Send me reset password instructions"


Scenario: entering nothing
	When I press "Forgot your password?"
	And I fill in "user_email" with ""
	And I press "Send me reset password instructions"
	Then I should see "error message"