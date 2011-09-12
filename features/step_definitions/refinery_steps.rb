def login
  visit new_user_session_path
  fill_in("user_login", :with => @user.email)
  fill_in("user_password", :with => 'greenandjuicy')
  click_button("submit_button")
end

Given /^I am logged in refinery user$/ do
  @user ||= Factory(:refinery_user)
  login
end

Given /^A Refinery user exists$/i do
  @refinery_user ||= Factory(:refinery_user)
end