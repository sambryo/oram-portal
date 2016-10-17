Feature: Administrator Login Portal
  As a user with administrator access to the ORAM portal
  In order to view all case documents
  I should be able to login under my user profile

Scenario: Accessing the login page
  Given I am on the home page
  When I press "Log In"
  Then I should be on the login page

Scenario: Valid administrator logging in
  Given I am on the login page
  When I fill in "Username" with "admin_username"
  When I fill in "Password" with "admin_password"
  Then I should be on the admin user profile page

Scenario: Administrator login info does not exist
 Given I am on the login page
 When I fill in "Username" with "invalid_username"
 When I fill in "Password" with "invalid_password"
 Then I should see "Log In Unsuccessful"

 Scenario: Administrator should be able to view all case documents
  Given I am on the admin user profile page
  When I press "All Cases"
  Then I should see all case documents

Scenario: Administrator should be able to invite lawyers to view relevant cases
  Given I am on the admin user profile page
  When I press "Invite Lawyers"
  Then I should be on the invite lawyers page
