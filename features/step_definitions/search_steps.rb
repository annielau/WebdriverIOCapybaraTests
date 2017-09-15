Then(/^Search control should be display$/) do
  page.should have_selector("div", :id => "docsearch")
end

# When(/^I enter "([^"]*)" on search control$/) do |searchText|
#   #fill_in '$input.ds-input', :with => searchText
#   #find("input[id$='ds-input']").set searchText
#   #fill_in 'input.ds-input', :with => searchText
#   find("input.ds-input").set searchText
# end

# Then(/^I should see the suggestion control$/) do
#   #page.should have_selector(".dds-suggestions")
#   #find("#dds-suggestions")
#   #expect(page).to have_selector('dds-suggestions', visible: true)
#   #find(:css, "#ds-dataset-1").should be_visible
#   page.should have_selector("#ds-dataset-1")

# end

When(/^I look for "([^"]*)" in search box$/) do |searchText|
  find("input.ds-input").set searchText
end

When(/^Press enter$/) do
  keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"
  page.driver.execute_script(keypress)
end

Then(/^"([^"]*)" title should be present$/) do |expectedText|
  page.should have_content (expectedText)
end