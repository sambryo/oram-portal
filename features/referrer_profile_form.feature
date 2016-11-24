Feature: Referrer Profile Form
  As a prospective referrer,
  In order to become a candidate for referrer vetting
  I should be able to fill out and submit a referrer form on my profile containing my information.

Background: Referrer in the database
  Given I am logged in as the following referrer:
  | first_name	| last_name	| email             	| status		| password	| invitation_accepted_at | role        |
  | Bryan			  | Adams     | bryan@adams.com		  | Complete 	| oram123	  | 'test'                 | referrer    |

# Scenario: Submitting the form successfully
#  Given I am on the referrer home page
#  And I press "Profile"
#  And I am on the referrer profile form page
#  And I fill out the referrer form
  #  When I fill in "first_name" with "Bryan"
  #  And I fill in "middle_name" with "John"
  #  And I fill in "last_name" with "Adams"
  #  And I fill in "month_dropdown" with "January"
  #  And I fill in "day dropdown" with "1"
  #  And I fill in "year_dropdown" with "2001"
  #  And I fill in "nationality_dropdown" with "Persian"
  #  And I fill in "spoken_languages_dropdown" with "Farsi"
  #  And I select "Transgender" from "gender_dropdown"
  #  And I select "Yes" from "LGBTQ_self-ID_dropdown"
  #  And I fill in "current_employer" with "Company A"
  #  And I fill in "current_position" with "Job A"
  #  And I fill in "ORAM_first_contact" with "A friend"
  #  And I check "Other"
  #  And I fill in "ORAM_referrer_program_info" with "I was recommended by a friend to apply to be a referrer"
  #  And I select "Yes" from "LGBTI_association"
  #  And I select "Yes" from "LGBTI_handle_trained"
  #  And I fill in "LGBTI_handle_trained_info" with "Organization A from 1/1/1995 to 6/1/1995, basic training."
  #  And I select "Gaydar" from "LGBTI_social_media_platforms"
  #  And I fill in "why_ORAM" with "I want to help save refugees."
#  And I press "Submit"
#  Then I should see "Form has been successfully submitted."
