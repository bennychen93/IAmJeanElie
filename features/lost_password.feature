Feature: lost password criteria

Scenario: clicking lost password
	When I go to the sign up page
	When I press "Forgot your password?"
	Then I should be on the lost password page
	And I fill in "user_email" with "loltemp1234@gmail.com"
	And I press "Send me reset password instructions"

Scenario: entering nothing
	When I go to the sign up page
	When I press "Forgot your password?"
	Then I should be on the lost password page
	And I fill in "user_email" with ""
	And I press "Send me reset password instructions"
	Then I should see "error message"

Scenario: lost password layout
  When I go to the registration page
  Then I should see /Register|Submit|Create( new account)?/i
  And I should see /name/i
  And I should see /Email( address)?/i
  And I should see /Password/i
  And I should see /Confirm password|Password confirmation/i
  And I should see /iamjeanelie/i
  #And I should see /subscribe/i
