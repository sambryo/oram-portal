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

