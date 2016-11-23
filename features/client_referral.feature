Feature: Client Referral Form
	As a referrer,
	In order to put my client into consideration for applicant vetting,
	I should be able to complete the "client referral form" for my client.

Background: Referrer in the database
  Given I am logged in as the following referrer:
  | first_name  | last_name     | email                 | status                | password      |
  | Bryan                         | Adams     | bryan@adams.com           | Complete    | oram123         |

# Scenario: Submitting the form successfully
#  Given I am on the referrer home page
#  And I press "Clients"
#  And I am on the client referral form page
#  And I fill out the client referral form
  #  When I fill in "first_name" with "Alex"
  #  And I fill in "middle_name" with "Big"
  #  And I fill in "last_name" with "Shan"
  #  And I select "February" from "month_dropdown"
  #  And I select "2" from "day_dropdown"
  #  And I select "2002" from "year_dropdown"
  #  And I select "Farsi" from "spoken_languages_dropdown"
  #  And I select "Iran" from "birth_country_dropdown"
  #  And I select "Yes" from "nationality_dropdown"
  #  And I select "3" from "departure_day_dropdown"
  #  And I select "December" from "departure_month_dropdown"
  #  And I select "2005" from "departure_year_dropdown"
  #  And I select "Undocumented (no legal status)" from "legal_status_dropwdown"
  #  And I select "No" from "kimlik_dropdown"
  #  And I fill in "street_address" with "1234 Road Street"
  #  And I fill in "City/Town" with "City"
  #  And I fill in "Province" with "Province"
  #  And I fill in "Country" with "Country"
  #  And I select "Alone" from "living_dropdown"
  #  And I select "No" from "refugee_before_dropdown"
  #  And I select "No" from "dgmm_registration_dropdown"
  #  And I select "No" from "asam_registration_dropdown"
  #  And I select "Female" from "birth_sex_dropdown"
  #  And I select "No" from "transgender_dropdown"
  #  And I select "Heterosexual" from "sex_orient_dropdown"
  #  And I select "Female" from "gender_dropdown"
  #  And I select "No" from "transition_dropdown"
  #  And I select "Unsure" from "ashamed_dropdown"
  #  And I select "Unsure" from "partner_dropdown"
  #  And I select "Yes" from "difficulties_dropdown"
  #  And I select "No" from "open_dropdown"
  #  And I select "Yes" from "social_media_dropdown"
  #  And I select "Yes" from "afraid_dropdown"
  #  And I select "Yes" from "lgbti_organizations_dropdown"
  #  And I select "No" from "hurt_dropdown"
  #  And I select "No" from "verbal_dropdown"
  #  And I select "No" from "violence_dropdown"
  #  And I select "Unsure" from "non_sex_gender_dropdown"
  #  And I select "Unsure" from "sex_violence_dropdown"
  #  And I select "No" from "mental_dropdown"
  #  And I select "Yes" from "unaware_dropdown"
  #  And I select "No" from "arrested_dropdown"
  #  And I select "Yes" from "family_dropdown"
  #  And I select "Yes" from "family_abuse_dropdown"
  #  And I select "No" from "persecution_dropdown"
  #  And I select "No" from "medical_dropdown"
  #  And I select "No" from "expedited_dropdown"
  #  And I select "Unsure" from "evidence_dropdown"
  #  And I select "No" from "personal_dropdown"
  #  And I select "Friend of a Friend" from "relationship_dropdown"
  #  And I select "Yes" from "mutual_dropdown"
  #  And I fill in "Additional Information" with "Additional Information"
#  And I press "Submit"
#  Then I should see "Form has been successfully submitted."