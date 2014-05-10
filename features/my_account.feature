#Feature: MyAccount

#  As a logged in user
#  So that I can change my personal information
#  I want to be able to update my account

#Background: Users in database
#  Given the following users exist
#    | email | first_name | last_name | password | password_confirmation |
#    | default_email@test.com | Edward | Mansfield | dummypwd | dummypwd |

#Scenario: click the link to update the current user's information
#  Given I am logged in as user 0
#  And I am on the My Account page
#  Then I should see "Edward"
#  And I should see "Mansfield"
#  And I should see "default_email@test.com"
#  When I press "Update Information"
#  Then I should be on the "Update Account Information" page

#  #  visit '/users/sign_in'
#Scenario: view the "Update Account Information" page
#  Given I am on the "Update Account Information" page for user "Edward Mansfield"
#  Then the first name should be "Edward"
#  And the last name should be "Mansfield"
#  And the email address should be "edmansfield@test.com"
#
#Scenario: try to update my account information with an invalid email address
#  Given I am on the "Update Account Information" page for user "Edward Mansfield"
#  And I fill in "Email Address" with "anewadd@ress@test.com"
#  And I press the "Submit Information" button
#  Then I should see "Email address is already in use"
#
#Scenario: try to update my account information with an invalid first name
#  Given I am on the "Update Account Information" page for user "Edward Mansfield"
#  And I fill in "First Name" with ""
#  And I press the "Submit Information" button
#  Then I should see "First name should be entered"
#
#Scenario: try to update my account information with an invalid first name
#  Given I am on the "Update Account Information" page for user "Edward Mansfield"
#  And I fill in "Last Name" with ""
#  And I press the "Submit Information" button
#  Then I should see "Last name should be entered"
#
#Scenario: update my account information with valid information
#  Given I am on the "Update Account Information" page for user "Edward Mansfield"
#  And I fill in "First Name" with "Andy"
#  And I fill in "Last Name" with "Tester"
#  And I fill in "Email Address" with "anewaddress@test.com"
#  And I press the "Submit Information" button
#  Then I should be on the My Account page
