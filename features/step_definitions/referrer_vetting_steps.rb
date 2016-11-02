And /I am logged in as the following admin/ do |admin_table|
    @admin = nil
    
    admin_table.hashes.each do |admin|
        @admin = Admin.create(admin)
    end
    
    visit new_admin_session_path
    fill_in("admin_email", :with => @admin.email)
    fill_in("admin_password", :with => @admin.password)
    click_button("Log in")
end

When /I view the profile of "(.*)\s(.*)"/ do |first_name, last_name|
    find(:xpath, "//tr[td[contains(.,'#{first_name}')]]/td/a", :text => 'View Profile').click
end

# When (/I select "([^"]*)" from the status dropdown/) do |option|
#     if option == "Status"
#         find("#select_button").find(:xpath, 'option[1]').select_option
#     elsif option == "Incomplete"
#         find("#select_button").find(:xpath, 'option[2]').select_option
#     elsif option == "Complete"
#         find("#select_button").find(:xpath, 'option[3]').select_option
#     elsif option == "Approved"
#         find("#select_button").find(:xpath, 'option[4]').select_option
#     elsif option == "Rejected"
#         find("#select_button").find(:xpath, 'option[5]').select_option
#     end
# end