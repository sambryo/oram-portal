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

When (/I select "([^"]*)" from the status dropdown/) do |option|
    if option == "Status"
        find("option[value='Status']").click
    elsif option == "Incomplete"
        find("option[value='Incomplete']").click
    elsif option == "Complete"
      find("option[value='Complete']").click
    elsif option == "Approved"
      find("option[value='Approved']").click
    elsif option == "Rejected"
      find("option[value='Rejected']").click
    end
end


Then /^(?:|I )should see a notification with  "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end
