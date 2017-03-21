Given(/^I am on Google Home page$/) do
  @google_page = GooglePage.new(@browser)
  @google_page.visit_google
end

When(/^Enter (.*) inside Search bar$/) do |str|
  @google_page.search_google str
end

Then(/^Clicking on Wikipedia result link$/) do
   @google_page.click_wiki_result
end

Given(/^I am on the Wikipedia Search page$/) do
  @wiki_page = WikiPage.new(@browser)
  @wiki_page.check_if_wikipage
end

When(/^Born is found inside biography$/) do
  @wiki_page.capture_bday    
end

Then(/^Display the birthdate of Mahatma Gandhi$/) do
  puts "The Date of birth is #{@wiki_page.dob}"
end