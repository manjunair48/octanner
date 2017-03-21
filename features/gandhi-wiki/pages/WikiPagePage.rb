class WikiPage
  attr_accessor :dob
  def initialize(browser)
    @browser = browser
    @wiki_born_details_xpath = "//table[contains(@class,'infobox biography')]//*[contains(text(),'Born')]/parent::*//td"
    @dob = nil
  end

  def check_if_wikipage
    if @browser.title().include? "wikipedia"
      return true
    end
    return false
  rescue Exception => e
    puts e.inspect
    return false
  end

  def capture_bday
    born_details_text = @browser.element(:xpath,@wiki_born_details_xpath).wait_until_present(timeout: 20).text
    re = /\d+ \w+ \d+/
    born_details_text.scan(re) do |match|
      begin
        Date.parse(match)
        @dob = match
        return true
      rescue ArgumentError
        # handle invalid date
      end
    end
  rescue Exception => e
    puts e.inspect
    return nil
  end

end