require_relative 'base_page'
class Events < BasePage
  include PageObject

  div(:search_for_a_city, xpath: '//*[@id="root"]/div/div[2]/div/div/main/section/main/header/main/form/nav/span[3]/documentfragment/div/div/div[1]')
  text_field(:enter_a_city_name, class: 'eds-textinput__input')
end

