require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'rspec'
 
Capybara.run_server = false
#Set default driver as Selenium
Capybara.default_driver = :selenium
#Set default selector as css
Capybara.default_selector = :css

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome, :driver_path => 'C:\Automate2\chromedriver.exe'
end
 
#Syncronization related settings
module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end
World(Capybara::DSL, Helpers)