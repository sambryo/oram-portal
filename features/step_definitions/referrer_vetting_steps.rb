Given /the following referrers exist/ do |referrers_table|
    referrers_table.hashes.each do |referrer|
       user = User.create(referrer)
       user.add_role :referrer
       user.save!
    end
end

And /I am logged in as the following admin/ do |admin_table|
    @admin = nil
    
    admin_table.hashes.each do |admin|
        @admin = Admin.create(admin)
    end
    
    visit new_admin_session_path
    fill_in("admin_email", :with => @admin.email)
    fill_in("admin_password", :with => @admin.password)
    click("Log in")
    expect(current_user.admin?).to_be_truthy
end