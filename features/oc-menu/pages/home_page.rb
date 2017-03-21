class HomePage
  
  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto "http://www.octanner.com/in/"
    #sleep 2
    #return true
  rescue Exception => e
    puts e.inspect
    return false
  end

  def click_on_menu menu
    get_menu_ref(menu).click
  rescue Exception => e
    puts e.inspect
    return false
  end

  def get_menu_ref menu_name
    return @browser.element(:xpath, "//*[@id='header']//a[contains(text(),'#{menu_name}')]").wait_until_present(timeout: 20)
  rescue Exception => e
    puts e.inspect
    return false
  end

  def verify_page_header header_text
      @browser.element(:xpath, "//*[contains(@class,'pagetitle title')]//*[contains(text(),'#{header_text}')]").wait_until_present(timeout: 20)
      return true
  rescue Exception => e
    puts e.inspect
    return false
  end
end