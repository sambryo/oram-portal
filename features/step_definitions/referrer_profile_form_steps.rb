Given /I am logged in as the following referrer/ do |referrer_table|
    @referrer = nil

    referrer_table.hashes.each do |referrer|
      @referrer = User.create(referrer)
    end

    @referrer.add_role :referrer

    visit new_user_session_path
    fill_in("user_email", :with => @referrer.email)
    fill_in("user_password", :with => @referrer.password)
    click_button("Log in")
end

When /I fill out the referrer form/ do
  pending
  # fill_in "first_name" , :with => "Bryan"
  # fill_in "middle_name" , :with => "John"
  # fill_in "last_name" , :with => "Adams"
  # fill_in "month_dropdown" , :with => "January"
  # fill_in "day dropdown" , :with => "1"
  # fill_in "year_dropdown" , :with => "2001"
  # fill_in "nationality_dropdown" , :with => "Persian"
  # fill_in "spoken_languages_dropdown" , :with => "Farsi"
  # find("option[value='Transgender']").click
  # # select "Transgender" from "gender_dropdown"
  # find("option[value='Yes']").click
  # # select "Yes" from "LGBTQ_self-ID_dropdown"
  # fill_in "current_employer" , :with => "Company A"
  # fill_in "current_position" , :with => "Job A"
  # fill_in "ORAM_first_contact" , :with => "A friend"
  # check "Other"
  # fill_in "ORAM_referrer_program_info" , :with => "I was recommended by a friend to apply to be a referrer"
  # # select "Yes" from "LGBTI_association"
  # find("option[value='Yes']").click
  # # select "Yes" from "LGBTI_handle_trained"
  # fill_in "LGBTI_handle_trained_info" , :with => "Organization A from 1/1/1995 to 6/1/1995, basic training."
  # # select "Gaydar" from "LGBTI_social_media_platforms"
  # find("option[value='Gaydar']").click
  # fill_in "why_ORAM", :with => "I want to help save refugees."
end
