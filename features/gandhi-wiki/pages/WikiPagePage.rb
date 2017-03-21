class WikiPage
  attr_accessor :dob
  def initialize(browser)
    @wiki_born_details = browser.elements(:xpath,"//table[contains(@class,'infobox biography')]//*[contains(text(),'Born')]/parent::*//*[contains(@class,'bday')]/parent::span[text()]")
    @browser_title = @browser.title()
    @dob = nil
  end

  def check_if_wikipage
    if @browser_title.include? "wikipedia"
      return true
    end
    return false
  rescue Exception => e
    puts e.inspect
    return false
  end

  def capture_bday
    @dob = @wiki_born_details
  rescue Exception => e
    puts e.inspect
    return false
  end

end