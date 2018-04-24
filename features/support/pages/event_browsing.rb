require_relative 'base_page'

class EventBrowsing < BasePage
  include PageObject
  direct_url(BASE_URL)
  # text_field(:search_events, class: 'js-query-input')
  text_field(:event_location, name: 'loc')
  # select_list(:event_day, id: 'consumer-header-date-range')
  div(:event_day, class: %w(responsive-form__select custom-select-container clrfix))
  span(:select_day, class: 'custom-select-value')
  div(:select_arrow, class: "custom-select-arrow")
  button(:submit_search_criteria, class: 'js-home-search-btn')
  text_field(:edit_location, id: 'consumer-location-input-edit')
  link(:edit_current_location, xpath: '//*[@id="content"]/div[1]/section/div[1]/div/div/h3/a')
  # text_field(:search_for_a_city, xapth: '//*[@id="locationPicker"]')

end
