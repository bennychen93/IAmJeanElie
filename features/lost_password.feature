Feature: lost password criteria

Scenario: non existing password
   Given I am on the lost password page
	And I fill in "user_email" with "loltemp1234@gmail.com"
	And I press "Send me reset password instructions"
	Then I should be on the password page
	And I should see /email not found/i

Scenario: entering nothing
	When I go to the lost password page
	And I press "Send me reset password instructions"
	Then I should be on the password page
	And I should see /error/i

Scenario: lost password layout
  When I go to the lost password page
  Then I should see /Forgot your password?/i
  And I should see /Email( address)?/i
  #And I should see /iamjeanelie/i

