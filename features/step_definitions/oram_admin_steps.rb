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
    end
end
