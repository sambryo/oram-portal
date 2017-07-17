When /^(?:|I )confirm/ do
    page.evaluate_script('window.confirm = function() { return true;}')
    page.click_button('OK')
end 

