Feature: Login Portal
  As a user with granted access to the ORAM portal
  In order to view relevant case documents
  I should be able to login under my user profile

Scenario: Accessing the login page
  Given I am on the home page
  When I press "Log In"
  Then I should be on the login page

Scenario: Valid User Logging In
  Given I am on the login page
  When I fill in "Username" with "username"
  When I fill in "Password" with "password"
  When I press "Log In"
  Then I should be on the user profile page

Scenario: User login info does not exist
 Given I am on the login page
 When I fill in "Username" with "badlogin"
 When I fill in "Password" with "badpw"
 When I press "Log In"
 Then I should see "Log In Unsuccessful"
