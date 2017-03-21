class GooglePage
  def initialize(browser)
    @browser = browser
    @browser_title = @browser.title()    
    @g_search_bar = @browser.text_field(:name,"q")
    @wiki_g_result_xpath = "//a[contains(text(),'Wikipedia')]"
  end

  def visit_google
    @browser.goto "https://www.google.com/"
    return true
  rescue Exception => e
    puts e.inspect
    return false
  end

  def search_google seartch_str
    @g_search_bar.wait_until_present(timeout: 30).set seartch_str
    return true
  rescue Exception => e
    puts e.inspect
    return false
  end

  def look_for_wiki_result    
    return @browser.element(:xpath, @wiki_g_result_xpath).wait_until_present(timeout: 20)    
  rescue Exception => e
    puts e.inspect
    return false
  end

  def click_wiki_result
    look_for_wiki_result.click
    return false
  rescue Exception => e
    puts e.inspect
    return false
  end

end