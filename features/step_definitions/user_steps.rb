When /^I log in as "([^"]*)":"([^"]*)"?$/ do |email, password|
  visit path_to('login')
  When %{I fill in "email" with "#{email}"}
  When %{I fill in "password" with "#{password}"}
  click_button('login')
  #User.authenticate(email, password)
end

When /^I log out$/ do
  visit path_to('logout')
end

Given /^I am logged in as "([^"]*)":"([^"]*)"$/ do |email, password|
  When %{I log in as "#{email}":"#{password}"}
end

Then /^I should see what is up$/ do
  save_and_open_page
end

