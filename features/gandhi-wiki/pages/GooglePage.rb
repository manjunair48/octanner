class GooglePage
  def initialize(browser)
    @browser = browser
    @browser_title = @browser.title()    
    #@g_search_bar = @browser.text_field(:name,"q")
  end

  def visit_google
    @browser.goto "https://www.google.com/"
    return true
  rescue Exception => e
    puts e.inspect
    return false
  end

  def search_google seartch_str
    @browser.text_field(:name,"q").wait_until_present(timeout: 20).set seartch_str
    return true
  rescue Exception => e
    puts e.inspect
    return false
  end

  def look_for_wiki_result
    @wiki_g_result.wait_until_present(timeout: 20)
    return true
  rescue Exception => e
    puts e.inspect
    return false
  end

  def click_wiki_result
    if look_for_wiki_result
      @wiki_g_result.click
      return true
    end
    return false
  rescue Exception => e
    puts e.inspect
    return false
  end

end