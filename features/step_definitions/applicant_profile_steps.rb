Given /I am logged in as the referrer "(.*)\s(.*)"/ do |first_name, last_name|
  user = User.find_by_first_name(first_name)
  visit "users/sign_in"
  fill_in "user_email", :with => user.email
  fill_in "user_password", :with => user.password
  click_button "Log in"
end
