Given(/^I launch octanner$/) do
  @home_page = HomePage.new(@browser)
  @home_page.visit
end

When(/^I click (.*) Menu$/) do |menu|
  @home_page.click_on_menu menu
end

Then(/^I see (.*) on the open page$/) do |title|
  @home_page.verify_page_header title
end