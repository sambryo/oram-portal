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
    user = User.create(client)
    user.invitation_accepted_at = "2016-11-07 19:35:09"
    user.role = "client"
    user.save!
    json = "{\"First Name\":\"Nhi\",\"Middle Name(s)\":\"\",\"Surname(s)\":\"Quach\",\"Date of Birth\":\"\",\"City/Town\":\"\",\"Province\":\"\",\"Country\":\"\",\"Nationality\":\"Afghanistan\",\"Do you describe yourself as an active member of the LGBTIQ Community?\":\"No\",\"What is the name of your current employer?\":\"\",\"What position do you hold there?\":\"\",\"How did you first come in contact with ORAM?\":\"\",\"Please describe how you came to the ORAM referrer program\":\"\",\"Have you worked for or been associated with any LGBTIQ groups, organizations or community\\r\\nprojects that work with the LGBTIQ community?\":\"No\",\"Which organization? Please give a brief overview of your role\":\"\",\"Have you ever been trained to vet LGBTIQ individuals?\":\"No\",\"Which training? Please provide the training organization’s name, dates of the session and a brief overview of the training program\":\"\",\"Why do you want to be a referrer for ORAM? Please answer in less than 300 words\":\"\"}"
    form = user.forms.build({form_json: json, form_type: 3, status: "Incomplete", first_name: user.first_name, last_name: user.last_name})
    form.save!
  end
end
