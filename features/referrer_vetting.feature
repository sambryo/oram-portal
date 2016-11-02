Feature: Vetting a Referrer
	As an ORAM administrator
	In order to vet referrers
	I should be able to view referrer profiles and approve or reject their profile request

Background: referrers in the database

	Given the following referrers exist:
	    | first_name	| last_name	| email             	| status		|
	 	| Bryan			| Adams     | bryan@adams.com		| Complete 		|
	 	| Hannah		| Montana   | hannah@montana.com	| Incomplete	|
	  	| Hillary		| Clinton	| hillary@clinton.com	| Rejected  	|
	  	| Adrian		| Greenberg | adrian@greenberg.com	| Approved  	|
	  	| Donald		| Trump		| donald@trump.com		| Incomplete	|

	And I am logged in as the following admin:
	    | first_name  | last_name | email               | password   |
	    | oram        | admin     | admin321@gmail.com  | oramadmin  |

Scenario: Approving the prospective Referrer profile
	Given I am on the referrers page
	When I go to the profile page for "Bryan Adams"
	And I press "Approve"
	Then I should be on the referrers page
	And I should see "Bryan Adams has been marked as approved"

Scenario: Index should show approved status
	Given I am on the referrers page
	And I go to the profile page for "Bryan Adams"
	And I press "Approve"
	Then I should be on the referrers page
	And I press "Approved Profiles"
	Then I should see "Adrian Greenberg"
	And I should see "Bryan Adams"

Scenario: Rejecting the prospective Referrer profile
	Given I am on the referrers page
	When I go to the review page for "Bryan Adams"
	And I press "Reject"
	Then I should be on the referrers page
	And I should see "Bryan Adams has been marked as rejected"
	
Scenario: Marking the prospective Referrer profile as incomplete
	Given I am on the referrers page
	When I go to the review page for "Bryan Adams"
	And I press "Incomplete"
	Then I should be on the referrers page
	And I should see "Bryan Adams has been marked as incomplete"

Scenario: Index should show approved status
	Given I am on the referrers page
	And I go to the review page for "Bryan Adams"
	And I press "Reject"
	Then I should be on the referrers page
	And I press "Rejected Profiles"
	Then I should see "Hillary Clinton"
	And I should see "Bryan Adams"
