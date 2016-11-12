Feature: Client Referral Questionnaire
  As a referrer,
  In order to put my client into consideration for applicant vetting,
  I should be able to complete the "client referral form" for my client.

Background: Referrer in the database
  Given I am logged in as the following referrer:
  | first_name	| last_name	| email             	| status		 | password	|
  | Bryan			  | Adams     | bryan@adams.com		  | Approved 	 | oram123	  |
  | Hannah		  | Montana   | hannah@montana.com	| Complete | oram123	  |

Scenario: Submitting the form successfully
  Given I am logged in as "Bryan Adams"
  And I am on the referrer home page
  And I press "Referrals"
  And I should be on the client referral form page

Scenario: An non-approved referrer should not be able to refer clients
  Given I am logged in as "Hannah Montana"
  And I am on the referrer home page
  Then I should not see "Referrals"
