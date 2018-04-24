Given(/^I enter (.+) as my location$/) do |location|
  on(EventBrowsing).event_location = location
end

When(/^I select All Dates from drop down list$/) do
  on(EventBrowsing) do |page|
    page.event_day_element.click
    page.select_day_element
    end
end

And(/^I click on Search button$/) do
  on EventBrowsing do |page|
    page.submit_search_criteria
  end
end

Then(/^I am able to see events for selected criteria$/) do
  sleep 2
  @current_page.wait_until(5) {
    @current_page.text.include? 'Things to do in'
  }
end

Given(/^I click on Cancel Current location$/) do
  on EventBrowsing do |page|
  page.edit_current_location_element.click
    end
end

When(/^I edit the location from Events for you in field$/) do
on EventBrowsing do |page|
  page.edit_location = 'Atlanta, GA, USA'
  @browser.send_keys :enter
end
end

Then(/^The location in search area should change to the location I entered$/) do
  on EventBrowsing do |page|
    expect(page.event_location).to match(page.edit_location)
  end
end

When(/^I change the location from Browsing in$/) do
  on Events do |page|
    page.search_for_a_city_element.focus
    page.search_for_a_city_element.click
    page.enter_a_city_name = "New York, NY"
    @browser.send_keys :enter
  end
end