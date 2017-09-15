Feature: Verify Search functionallity

Scenario: Verify Search control visualization
 Given I am on the WebdriverIO homepage
 Then Search control should be display

# Scenario: Verify the suggestion control visualization after look for a text
#  Given I am on the WebdriverIO homepage
#  When I enter "cucumber" on search control
#  Then I should see the suggestion control

Scenario: Display the right page after look for a word
 Given I am on the WebdriverIO homepage
 When I look for "selectors" in search box
 And Press enter
 Then "Selectors" title should be present
