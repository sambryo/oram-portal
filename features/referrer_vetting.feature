Feature: Vetting a Referrer
	As an ORAM administrator
	In order to vet referrers
	I should be able to view referrer profiles and approve or deny their profile request

Background: referrers in the database

	Given the following referrers exist:
	    | name             | status		 |
	 	| Bryan Adams      | Complete 	 |
	 	| Hannah Montana   | Incomplete  |
	  	| Hillary Clinton  | Rejected    |
	  	| Adrian Greenberg | Approved    |
	  	| Donald Trump	   | Incomplete  |

	And I am an ORAM administrator

Scenario: Approving the prospective Referrer profile
	Given I am on the referrer profiles page
	When I go to the review page for "Bryan Adams"
	And I press "Approve"
	Then I should be on the review page for "Bryan Adams"
	And I should see "Approved"

Scenario: Index should show approved status
	Given I am on the referrer profiles page
	And I go to the review page for "Bryan Adams"
	And I press "Approve"
	When I press "Back to Referrer Profiles"
	And I choose "Approved Profiles"
	Then I should see "Adrian Greenberg"
	And I should see "Bryan Adams"

Scenario: Rejecting the prospective Referrer profile
	Given I am on the referrer profiles page
	When I go to the review page for "Bryan Adams"
	And I press "Reject"
	Then I should be on the review page for "Bryan Adams"
	And I should see "Rejected"

Scenario: Index should show approved status
	Given I am on the referrer profiles page
	And I go to the review page for "Bryan Adams"
	And I press "Reject"
	When I press "Back to Referrer Profiles"
	And I choose "Rejected Profiles"
	Then I should see "Hillary Clinton"
	And I should see "Bryan Adams"
