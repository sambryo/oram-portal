Feature: Referrer Profile Creation
	As an approved referrer
	In order to create a referrer profile
	I should be able to submit a personal profile via a link sent by ORAM

Scenario: Creating the referrer profile
	Given I am on the referrer profile creation page
	When I fill in "First Name" with "First"
	When I fill in "Last Name" with "Last"
	When I press "Create a Referrer Profile"
	Then I should be on the referrer profile pending approval page

Scenario: ORAM administrator accessing the pending referrer profile page
	Given I am an ORAM administrator
	When I follow "Pending Referrer Profiles"
	Then I should be on the pending referrer profiles page 

Scenario: Approving the referrer profile
	Given I am on the pending referrer profiles page
	When I press "Approve"
	Then I should be on the referrer profile approved page

Scenario: Rejecting the referrer profile 
	Given I am on the pending referrer profiles page
	When I press "Reject"
	Then I should be on the referrer profile rejected page





