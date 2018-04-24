require 'watir'
require 'page-object'
require 'page-object/page_factory'
require 'active_support/core_ext/string/inflections'
require_relative '../../features/support/pages/base_page'

browser = Watir::Browser.new

this_file_location = File.dirname __FILE__
config_file_location = this_file_location + '/../../config/config.yml'
config = YAML.load_file config_file_location

BASE_URL = config['testApplicationUrl']

World(PageObject::PageFactory)

Before do
  @browser = browser
end
