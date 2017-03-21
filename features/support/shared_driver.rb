require 'rubygems'
require 'rspec'
require 'watir'

include Selenium

#Creating WebDriver
switches = %w[--ignore-certificate-errors --disable-extensions --disable-popup-blocking --disable-translate]
browser = Watir::Browser.new :chrome, :switches => switches
							  
Before do
  @browser = browser
end