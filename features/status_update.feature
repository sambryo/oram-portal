Feature: update the status of a pending application
  
  As an ORAM administrator
  In order to update the pending application status
  I should be able to approve an application or notify the applicant of an incomplete application.

Background: referrers in the database
  
  Given the following referrers exist:
    | name             | complete |
    | Bryan Adams      | true     |
    | Hannah Montana   | false    |
    | Hillary Clinton  | true     |
    | Adrian Greenberg | true     |

Scenario: filter through all of the incomplete applications
  When I go to the "Pending Applications" page
  And I click "Incomplete Applications"
  Then I should see "Hannah Montana"
  And I should not see "Bryan Adams", "Hillary Clinton" and "Adrian Greenberg"
  
Scenario: send a notification to a referrer with an incomplete application
  When I go to the "Pending Applications" page
  And I choose "Hannah Montana"
  And I press a "Notify of Application incompleteness" button
  Then I should be on the "Pending Applications" page
  And I should not see "Hannah Montana"
  
Scenario: approve a referrer with a complete application
  When I go to the "Pending Applications" page
  And I choose "Bryan Adams"
  And I press a "Approve" button
  Then I should be on the "Pending Applications" page
  And I should not see "Bryan Adams"
  

  