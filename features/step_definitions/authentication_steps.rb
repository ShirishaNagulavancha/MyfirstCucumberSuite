When(/^I can able to log in with valid credentials$/) do
  visit(Login).log_in_with 'shirisharao423@gmail.com','Shirisha@1'
  # @current_page.should_contain_text 'Find your next experience'
end

When(/^I am not (?:logged in|authenticated)$/) do
 on(BasePage) do |page|
   page.log_out if page.log_out?
 end
end

Given(/^I am on the Home page$/) do
visit EventBrowsing
end