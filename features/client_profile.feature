@javascript
Feature: Client Profile
  As an approved client
  In order to provide the necessary information to be considered for refugee status
  I want to be able view and edit my profile

Background: Logging in as a client with an account

  Given I am logged in as the following client:
    | first_name  | last_name   | email                 | password     	  | role					|
    | Bryan       | Adams     	| bryan@adams.com       | oram123         | client			  |

Scenario: Client trying to view their profile
  Given PENDING
  Given I follow "Profile"
  Then I should see "Name:"
    And my name should be "Bryan Adams"
    And my email should be "bryan@adams.com"
    
Scenario: Client trying to edit their profile
  Given I follow "Settings"
  When I press "Edit Profile"
  Then I should see "First name:"
  When I enter "Test" in "First name:"
    And I enter "User" in "Last name:"
    And I press "Update User"
  And I go back to the profile page
    And I should see "Test User"
    
Scenario: Client trying to delete their profile
  Given I follow "Settings"
  When I press "Delete Profile"
  When I confirm
  Then I should be on the home page
