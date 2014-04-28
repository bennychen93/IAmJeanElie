Feature: registration

  As a guest
  So that I can have an account
  I want to be able to register for an account

Scenario: register for account
  When I go to the registration page
  And I fill in "email" with "mhems1@binghamton.edu"
  And I fill in "password" with "dummy"
  And I press "Submit"
  Then I should be on the confirm page



