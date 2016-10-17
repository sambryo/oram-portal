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
  When I go to the applications page
  And I press "Incomplete Applications"
  Then I should see "Hannah Montana"
  And I should not see "Bryan Adams", "Hillary Clinton" and "Adrian Greenberg"

Scenario: filter through all of the complete applications
  When I go to the applications page
  And I press "Complete Applications"
  Then I should see "Bryan Adams", "Hillary Clinton" and "Adrian Greenberg"
  And I should not see "Hannah Montana"

Scenario: send a notification to a referrer with an incomplete application
  When I go to the applications page
  And I go to the review page for "Hannah Montana"
  And I press "Notify of Application incompleteness"
  Then I should be on the applications page
  And I should not see "Hannah Montana"

Scenario: approve a referrer with a complete application
  When I go to the applications page
  And I go to the review page for "Bryan Adams"
  And I press "Approve"
  Then I should be on the applications page
  And I should not see "Bryan Adams"
