Feature: Applicant Referral Form
  As an applicant whose referral has been accepted by ORAM,
  In order to apply for refugee status,
  I should be able to fill out the applicant referral form.

Background: Applicant in the database
  Given the following referrers exist:
  | first_name	| last_name	| email             	| status		 | password	|
  | Bryan			  | Adams     | bryan@adams.com		  | Pending 	 | oram123	|

Scenario: Submitting the form successfully
  Given I am logged in as the referrer "Bryan Adams"
  And I am on the applicant home page
  And I press "Profile"
  And I should be on the applicant profile form page

Scenario: Approving the prospective applicant profile
	Given I am on the applicants page
	When I view the profile of "Bryan Adams"
	And I press "Approve"
	Then I should be on the referrers page
	And I should see "Bryan Adams has been marked as approved"
