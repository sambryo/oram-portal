Then /the status of "(.*)\s(.*)" should be "(.*)"/ do |first_name, last_name, status|
  # find(:xpath, "//tr[td[contains(.,'#{first_name}')]]/td/a", :text => '#{status}')
  find('tr', text: '#{first_name}').should have_content(status)
end
