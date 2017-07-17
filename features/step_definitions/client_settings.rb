#editing your account settings / testing delete

When /^(?:|I )have pressed "([^"]*)"$/ do |button|
  begin
    main, popup = page.driver.browser.window_handles
    within_window(popup) do
      click_button("Ok")
    end
  rescue
  end
end

When(/^I say I'm outside my country of origin$/) do
  find('.client-outside-country').find(:xpath, 'option[1]').select_option
end