Given /the following admins exist/ do |admins_table|
  admins_table.hashes.each do |admin|
    Admin.create(admin)
  end
end

Given /the following referrers exist/ do |referrers_table|
    referrers_table.hashes.each do |referrer|
      user = User.create(referrer)
      user.invitation_accepted_at = "2016-11-07 19:35:09"
      user.role = "referrer"
      user.save!
      json = "{\"First Name\":\"Nhi\",\"Middle Name(s)\":\"\",\"Surname(s)\":\"Quach\",\"Date of Birth\":\"\",\"City/Town\":\"\",\"Province\":\"\",\"Country\":\"\",\"Nationality\":\"Afghanistan\",\"Do you describe yourself as an active member of the LGBTIQ Community?\":\"No\",\"What is the name of your current employer?\":\"\",\"What position do you hold there?\":\"\",\"How did you first come in contact with ORAM?\":\"\",\"Please describe how you came to the ORAM referrer program\":\"\",\"Have you worked for or been associated with any LGBTIQ groups, organizations or community\\r\\nprojects that work with the LGBTIQ community?\":\"No\",\"Which organization? Please give a brief overview of your role\":\"\",\"Have you ever been trained to vet LGBTIQ individuals?\":\"No\",\"Which training? Please provide the training organization’s name, dates of the session and a brief overview of the training program\":\"\",\"Why do you want to be a referrer for ORAM? Please answer in less than 300 words\":\"\"}"
      form = user.forms.build({form_json: json, form_type: 1, status: "Incomplete", first_name: user.first_name, last_name: user.last_name})
      form.save!
    end
end
