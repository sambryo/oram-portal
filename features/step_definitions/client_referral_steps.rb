Given /I complete the client referral form/ do
  fill_in "form_response_First_Name", :with => "Billy"
  fill_in "form_response_Middle_Name_s_", :with => "Bob"
  fill_in "form_response_Surname_s_", :with => "Joe"
  fill_in "form_response_Nicknames", :with => "Joe Bob"
  fill_in "form_response_Date_of_Birth", :with => "01/01/2001"
  find(:css, "#form_response_Languages_Spoken_[value='Arabic']").set(true)
  # find('#form_response_Country Of Birth').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_the_person_referred_outside_his_her_country_of_nationality_').find(:xpath, 'option[2]').select_option
  fill_in "form_response_When_Did_They_Leave_Their_Country_of_Origin_", :with => "01/01/2005"
  find('#form_response_What_is_Their_Legal_Status_in_Turkey_').find(:xpath, 'option[2]').select_option
  find('#form_response_Does_This_Person_Have_a_Kimlik_').find(:xpath, 'option[2]').select_option
  fill_in "form_response_Street_Address", :with => "1234 Road Street"
  fill_in "form_response_City_Town", :with => "City"
  fill_in "form_response_Province", :with => "Province"
  fill_in "form_response_Country", :with => "Country"
  find('#form_response_What_is_their_current_living_situation_').find(:xpath, 'option[2]').select_option
  find('#form_response_Has_this_person_applied_for_refugee_status_before_').find(:xpath, 'option[2]').select_option
  find('#form_response_Grounds_for_Refugee_Claim_').find(:xpath, 'option[2]').select_option
  find('#form_response_Has_this_person_registered_with_the_DGMM_').find(:xpath, 'option[2]').select_option
  find('#form_response_Has_this_person_registered_with_the_ASAM_').find(:xpath, 'option[2]').select_option
  find('#form_response_What_was_their_sex_at_birth_').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_this_person_transgender_').find(:xpath, 'option[2]').select_option
  find('#form_response_How_would_you_describe_their_sexual_orientation_').find(:xpath, 'option[2]').select_option
  find('#form_response_How_would_you_describe_their_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Does_this_person_wish_to_transition_in_the_future_').find(:xpath, 'option[2]').select_option
  find('#form_response_To_the_best_of_your_knowledge__do_they_feel_ashamed_about_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Does_this_person_currently_have_a_partner_').find(:xpath, 'option[2]').select_option
  find('#form_response_To_your_knowledge__has_this_person_ever_had_difficulties_in_their_intimate_relationships_due_to_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Are_they_open_about_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Are_they_open_about_their_sexual_orientation_gender_identity_with').find(:xpath, 'option[2]').select_option
  # find('#form_response_Does_this_person_use_gay_social_media_platforms__e.g._Hornet__Manjam_etc.').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_this_person_afraid_that_people_will_find_out_about_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_this_person_have_they_been_involved_in_organizational_community_work_supporting_the_LGBTI_community__including_LGBTI_support_groups__').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_anyone_aware_of_their_sexual_orientation_gender_identity_who_may_want_to_hurt_them_').find(:xpath, 'option[2]').select_option
  # find(:css, "#form_response_Who__Choose_as_many_as_are_relevant._[value='Family Members in their Country of Origin']").set(true)
  find('#form_response_Has_this_person_experienced_verbal_abuse_based_on_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  # find(:css, "#form_response_Who__Choose_as_many_as_are_relevant._[value='Family Members in their Country of Origin']").set(true)
  # find('#form_response_Was_this_an_isolated_incident__or_did_it_occur_more_than_once_').find(:xpath, 'option[2]').select_option
  find('#form_response_Does_this_person_fear_further_verbal_abuse_').find(:xpath, 'option[2]').select_option
  find('#form_response_Has_this_person_experienced_physical_violence_based_on_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Has_this_person_experienced_any_verbal_or_physical_abuse_not_based_on_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  # fill_in "form_response_Please_give_a_brief_overview", :with => "Things happened"
  find('#form_response_Has_this_person_experienced_sexual_violence_').find(:xpath, 'option[2]').select_option
  find('#form_response_Does_this_person_suffer_from_any_form_of_mental_illness_').find(:xpath, 'option[2]').select_option
  # find(:css, "#form_response_Which_mental_illness__Choose_as_many_as_are_relevant._[value='Depression']").set(true)
  find('#form_response_Is_this_mental_illness_related_to_any_abuse__physical__verbal_or_psychological__which_this_person_has_previously_experienced_based_on_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_it_possible_that_this_person_has_suffered_further_abuse__whether_mental__physical_or_verbal__that_you_are_unaware_of_').find(:xpath, 'option[2]').select_option
  find('#form_response_Has_this_person_ever_been_arrested_detained_').find(:xpath, 'option[2]').select_option
  find('#form_response_Was_this_due_to_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  # find(:css, "#form_response_Who_was_involved_in_this_arrest__Choose_as_many_as_are_relevant._[value='Unsure']").set(true)
  find('#form_response_Has_this_person_ever_had_problems_with_their_family_due_to_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_there_a_threat_of_abuse_or_violence_from_their_family_based_on_their_sexual_orientation_gender_identity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Is_this_person_likely_to_face_persecution_in_the_future_').find(:xpath, 'option[2]').select_option
  # find(:css, "#form_response_From_whom__Choose_as_many_as_are_relevant._[value='Family Members in their Country of Origin']").set(true)
  find('#form_response_Do_they_have_any_pressing_medical_concerns_that_would_require_their_application_to_be_processed_on_an_expedited_basis_').find(:xpath, 'option[2]').select_option
  # fill_in "form_response_Please_briefly_explain", :with => "Things happened"
  find('#form_response_Does_this_person_have_documentary_evidence_to_support_their_refugee_claim_').find(:xpath, 'option[2]').select_option
  # find(:css, "#form_response_Which_documents__Choose_as_many_as_are_relevant._[value='Other']").set(true)
  # fill_in "form_response_Please_name_the_type_of_document", :with => "Document"
  find('#form_response_Do_you_know_this_person_personally_').find(:xpath, 'option[2]').select_option
  find('#form_response_How_do_you_know_them_').find(:xpath, 'option[2]').select_option
  find('#form_response_Do_you_and_this_person_have_mutual_friends_or_acquaintances_').find(:xpath, 'option[2]').select_option
  find('#form_response_How_would_you_describe_your_relationship_with_this_person_').find(:xpath, 'option[2]').select_option
  find('#form_response_Did_you_meet_this_person_in_a_professional_capacity_').find(:xpath, 'option[2]').select_option
  find('#form_response_Which_organization').find(:xpath, 'option[2]').select_option
  # fill_in "form_response_Other_Organization", :with => "Organization"
  find('#form_response_Do_you_have_a_personal_relationship_with_this_person_').find(:xpath, 'option[2]').select_option
  find('#form_response_How_well_do_you_know_each_other_').find(:xpath, 'option[2]').select_option
  # fill_in "form_response_Please_provide_any_additional_information_you_believe_will_be_relevant__Maximum_500_words_:", :with => "Stuff"
end
