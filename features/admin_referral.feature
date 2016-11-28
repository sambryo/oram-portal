Feature: Admin checking the list of referrals
  As an ORAM administrator
  In order to approve or reject referred clients
  I want to be able to view the list of all current referrals with links to their forms

Background: Referrer creating referrals
  Given that I am logged in as the following referrer:
    | first_name	| last_name	| email             	| password	| invitation_accepted_at | role        |
    | Bryan			  | Adams     | bryan@adams.com		  | oram123	  | 'test'                 | referrer    |

  And I follow "Refer Client"
  And I complete the client referral form
  And I press "Submit"

Scenario: Admin checking to see if the client appears in the table
  Given that I am logged in as the following admin:
    | first_name  | last_name | email               | password   |
    | oram        | admin     | admin321@gmail.com  | oramadmin  |

  And I follow "Referrals"
  Then I should see "Billy"
