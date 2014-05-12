Feature: registration

  As a guest
  So that I can have an account
  I want to be able to register for an account

Scenario: register for account
  When I go to the registration page
  And I try to register with "mhems1@binghamton.edu", "dummypwd", "dummypwd"
  And I press "Sign up"
  Then I should be on the main page

Scenario: conflicting password
  When I go to the registration page
  And I try to register with "mhems1@binghamton.edu", "dummypwd", "diffpwd"
  And I press "Sign up"
  Then I should be on the main page
  And I should see /error(s)? prohibited this user/i

Scenario: too short password
 When I go to the registration page
 And I try to register with "mhems1@binghamton.edu", "short", "short"
 And I press "Sign up"
 Then I should be on the main page
 And I should see /error(s)? prohibited this user/i

Scenario: registration page layout
 When I go to the registration page
 Then I should see /Register|Submit|Create( new account)?/i
 And I should see /name/i
 And I should see /Email( address)?/i
 And I should see /Password/i
 And I should see /Confirm password|Password confirmation/i
# And I should see /iamjeanelie/i
# And I should see /subscribe/i


#Scenario: flash when sign up
# When I go to the registration page
# And I fill in "user_first_name" with "Matt"
# And I fill in "user_last_name" with "X"
# And I try to register with "mhems1@binghamton.edu", "dummypwd", "dummypwd"
# And I press "Sign up"
# Then I should be on the registration page
 


