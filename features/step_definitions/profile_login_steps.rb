Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    User.create(user)
  end
end

Given /I am logged in as the following client/ do |clients_table|
  @client = nil

  clients_table.hashes.each do |client|
    @client = User.create(client)
  end

  visit new_user_session_path
  fill_in("user_email", :with => @client.email)
  fill_in("user_password", :with => @client.password)
  click_button("Log in")
end

Given /the following clients exist/ do |clients_table|
  clients_table.hashes.each do |client|
    User.create(client)
  end
end
