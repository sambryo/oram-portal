Feature: Client Profile
  As an approved client
  In order to provide the necessary information to be considered for refugee status
  I want to be able view and edit my profile

Background: Logging in as a client with an account

  Given I am logged in as the following client:
    | first_name  | last_name   | email                 | password     	  | role					|
    | Bryan       | Adams     	| bryan@adams.com       | oram123         | client			  |

Scenario: Client trying to view and edit their profile
  Given I follow "Profile"
  Then I should see "Edit"
  When I follow "Edit"
  Then I should see "First Name:"
  When I press "Submit"
  Then I should see "Edit"
