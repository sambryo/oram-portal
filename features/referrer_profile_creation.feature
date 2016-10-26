Feature: Referrer Profile Creation
	As an approved referrer
	In order to create a referrer profile
	I should be able to submit a personal profile via a link sent by ORAM

Scenario: Creating the referrer profile
	Given I am on the referrer profile creation page
	When I fill in "user_first_name" with "First"
	When I fill in "user_last_name" with "Last"
	When I press "Submit"
	Then I should be on the home page