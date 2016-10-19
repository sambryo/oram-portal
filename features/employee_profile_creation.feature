Feature: update the status of a pending application

  As a ORAM Administrator
  In order to create profiles for ORAM employees
  I should be able to send a portal link to allow employees to sign up and create their profile

#Background: Invitations in the database

#  Given the following invitations exist:
#    | name       | email               | status    |
#    | John Doe   | johndoe@gmail.com   | pending   |
#    | Jane Smith | janesmith@gmail.com | pending   |
#    | Mike Do    | mikeyd@gmail.com    | completed |

#Scenario: Generate employee invitation link and send to email
#  Given I am an ORAM administrator
#  When I am on the new employee invitation page
#  And I fill in "Name" with "ORAM"
#  And I fill in "Invite Employee" with "cs169.team13@gmail.com"
#  And I press "Send invitation"
#  Then I should see "Employee invitation has been sent to inbox of cs169.team13@gmail.com"

#Scenario: View statuses of sent employee invitations
#  Given I am an ORAM administrator
#  When I am on the employee invitation status page
#  Then I should see "John Doe", "Jane Smith" and "Mike Do"

#Scenario: Sort employee invitations by name
#  Given I am an ORAM administrator
#  When I am on the employee invitation status page
#  Then I should see "John Doe", "Jane Smith" and "Mike Do"
#  When I press "name"
#  Then I should see "Mike Do" before "Jane Smith"
#  And I should see "Jane Smith" before "John Doe"

#Scenario: Sort employee invitations by status
#  Given I am an ORAM administrator
#  When I am on the employee invitation status page
#  Then I should see "John Doe", "Jane Smith" and "Mike Do"
#  When I press "status"
#  Then I should see "Jane Smith" before "Mike Do"
