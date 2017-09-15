Given(/^I am on the WebdriverIO homepage$/) do
  visit 'http://webdriver.io/'
end

Then(/^I should see "([^"]*)" title$/) do |expectedText|
  expect(page.title).to include expectedText
end

When(/^I click on "([^"]*)" Link$/) do |link|
  click_link (link)
end

Then(/^I should see "([^"]*)" button$/) do |button|
  page.should have_content (button)
end
