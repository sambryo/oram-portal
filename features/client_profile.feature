Feature: Client Profile
  As an approved client
  In order to provide the necessary information to be considered for refugee status
  I want to be able view and edit my profile

Background: Logging in as a client with an account

  Given I am logged in as the following client:
    | first_name  | last_name   | email                 | password     	  | role					|
    | Bryan       | Adams     	| bryan@adams.com       | oram123         | client			  |

Scenario: Client trying to view their profile
  Given I follow "Profile"
  Then I should see "Name:"
    And my name should be "Bryan Adams"
    And my email should be "bryan@adams.com"
    
Scenario: Client trying to edit their profile
  Given I follow "Profile"
  Then I should see "Settings"
  When I follow "Settings"
  Then I should see "Name:"
    And I should see "E-mail:"
    And I should see "Current password:"
    And I should see "New password:"
    And I should see "Confirm new password"
  When I enter "Brian Adams" in "Name:"
    And I click "Submit"
  Then I should see "Name"
    And my name should be "Brian Adams"
    
Scenario: Client trying to delete their profile
  Given I follow "Profile"
  Then I should see "Settings"
  When I follow "Settings"
  Then I should see "Delete Account"
  When I follow "Delete Account"
  Then I should see "Are you sure?"
    And I should see "Yes, delete my account."
    And I should see "No, go back"
  When I click "Yes, delete my account"
  Then I should be on the home page
