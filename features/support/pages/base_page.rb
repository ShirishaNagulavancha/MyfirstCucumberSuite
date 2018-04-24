require 'page-object/page_factory'
class BasePage
  include PageObject

  link(:log_out, visible_text: /Log out/)

  def should_contain_text(text, error_message = "Text #{text} never appeared")
    wait_until(5, text)
    self.text.include? text
  end
  def wait_for_angular(timeout = 30)
    # puts 'waiting for angular'
    wait_until(timeout) do
      # puts @browser.execute_script('return typeof angular') == 'object'
      @browser.execute_script('return typeof angular') == 'object'
    end
  end

end