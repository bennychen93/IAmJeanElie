Feature: registration

  As a guest
  So that I can have an account
  I want to be able to register for an account

Scenario: register for account
  When I go to the registration page
  And I try to register with "mhems1@binghamton.edu", "dummypwd", "dummypwd"
  And I press "Submit"
  Then I should be on the confirm page

Scenario: conflicting password
  When I go to the registration page
  And I try to register with "mhems1@binghamton.edu", "dummypwd", "diffpwd"
  And I press "Submit"
  Then I should be on the registration page
  And I should see "Password does not match confirmation"

Scenario: too short password
  When I go to the registration page
  And I try to register with "mhems1@binghamton.edu", "short", "short"
  And I press "Submit"
  Then I should be on the registration page
  And I should see "Password must be at least 6 characters"

Scenario: registration page layout
  When I go to the registration page
  Then I should see /Register|Submit|Create( new account)?/
  And I should see /Username/
  And I should see /Email( address)?/
  And I should see /Password/
  And I should see /Confirm password|Password confirmation/
  And I should see /iamjeanelie/
  And I should see /subscribe/

Scenario: page has link back to main page
  When I go to the registration page
  And I press "IamJeanElie"
  Then I should be on the IamJeanElie homepage

Scenario: duplicate email forbidden
  Given the following users exist:
  | email     | password | confirmation |
  | dummy.edu | jk       | jk           |
  And I try to register with "dummy.edu", "diff", "diff"
  Then I should be on the registration page
  And I should see "already exists"




