Feature: update the status of a pending application

  As an ORAM administrator
  In order to update the pending application status
  I should be able to approve an application or notify the applicant of an incomplete application.

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

Scenario: ORAM administrator visiting the prospective Referrer profile
	When I follow "Referrer Profiles"
	Then I should be on the referrers page

Scenario: filter for incomplete applications
	Given I am on the referrers page
	When I press "Incomplete Applications"
	Then I should see "Hannah Montana" 
	And I should see "Donald Trump"
	And I should not see "Bryan Adams"
	And I should not see "Hillary Clinton"
	And I should not see "Adrian Greenberg"

Scenario: filter through all of the complete applications
	Given I am on the referrers page
	When I press "Complete Applications"
	Then I should see "Bryan Adams"
	And I should not see "Hannah Montana"
	And I should not see "Hillary Clinton"
	And I should not see "Adrian Greenberg"
	And I should not see "Donald Trump"

Scenario: filter through all of the rejected applications
	Given I am on the referrers page
	When I press "Rejected Applications"
	Then I should see "Hillary Clinton"
	And I should not see "Bryan Adams"
	And I should not see "Hannah Montana"
	And I should not see "Adrian Greenberg"
	And I should not see "Donald Trump"

Scenario: filter through all of the approved applications
	Given I am on the referrers page
	When I press "Approved Applications"
	Then I should see "Adrian Greenberg"
	And I should not see "Bryan Adams"
	And I should not see "Hannah Montana"
	And I should not see "Hillary Clinton"
	And I should not see "Donald Trump"

#Scenario: send a notification to a referrer with an incomplete application
#  When I go to the applications page
#  And I go to the review page for "Hannah Montana"
#  And I press "Notify of Application incompleteness"
#  Then I should be on the applications page
#  And I should not see "Hannah Montana"
