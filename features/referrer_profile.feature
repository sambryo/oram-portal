Feature: Referrer Profile Editing
  As a referrer with access to my referrer profile
  In order to fix information on my profile
  I should be able to edit my profile

Background: Referrer in the database
    Given the following referrers exist:
      | first_name  | last_name | email                  | password      |
      | oram        | referrer  | referrer321@gmail.com  | oramreferrer  |

    Given the following admins exist:
      | first_name  | last_name | email               | password   |
      | oram        | admin     | admin321@gmail.com  | oramadmin  |

Scenario: Only referrer should see the edit link
    Given I am logged in as the following referrer:
      | first_name  | last_name | email                  | password      |
      | oram        | referrer  | referrer321@gmail.com  | oramreferrer  |

    And I press "Profile"
    Then I should see "Edit"

Scenario: Admin should not be able to edit the referrer profile
    Given I am logged in as the following admin:
      | first_name  | last_name | email               | password   |
      | oram        | admin     | admin321@gmail.com  | oramadmin  |

    And I am on the referrer profile page for "oram referrer"
    Then I should not see "Edit"
