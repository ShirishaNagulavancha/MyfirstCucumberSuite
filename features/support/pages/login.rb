require_relative 'base_page'
class Login < BasePage
  include PageObject

  direct_url(BASE_URL + '/login/?referrer=/')
  text_field(:login_email, id: 'signin-email')
  button(:get_started, class: 'eds-btn')
  text_field(:password, id: 'password')
  button(:submit_credentials, class:'eds-btn')

  def initialize_page
    login_email_element.when_present 5
  end

  def log_in_with(login_email, password )
    self.login_email = login_email
    get_started
    self.password = password
    submit_credentials
  end

end