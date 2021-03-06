Feature: Case Worker checking to see the list of referrals in the system
  As an ORAM Case Worker
  In order to view the profiles of current referrals
  I want to be able to view a table containing all existing referrals and links to their forms

Background: Referrers in the database

  Given that the following referrers exist:
    | first_name	| last_name	| email             	| password	| invitation_accepted_at | role     |
    | Bryan			  | Adams     | bryan@adams.com		  | oram123	  | 'test'                 | referrer |
    | Hannah		  | Montana   | hannah@montana.com	| oram123	  | 'test'                 | referrer |
    | Hillary		  | Clinton	  | hillary@clinton.com	| oram123	  | 'test'                 | referrer |
    | Adrian		  | Greenberg | adrian@greenberg.com| oram123	  | 'test'                 | referrer |
    | Donald		  | Trump		  | donald@trump.com		| oram123	  | 'test'                 | referrer |

Scenario: Case Worker viewing the table with all referrers
  Given that I am logged in as the following Case Worker:
    | first_name  | last_name | email               | password   |
    | oram        | Case Worker     | Case Worker321@gmail.com  | oramCase Worker  |

  And I follow "Referrers"
  Then I should see "Bryan"
  Then I should see "Hannah"
  Then I should see "Hillary"
  Then I should see "Adrian"
  Then I should see "Donald"
