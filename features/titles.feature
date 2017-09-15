Feature: Verify WebDriverIO pages title

Scenario: Verify WebDriverIO title        
 Given I am on the WebdriverIO homepage
 Then I should see "WebdriverIO - WebDriver bindings for Node.js" title

 Scenario: Verify Guide Page title        
  Given I am on the WebdriverIO homepage
  When I click on "Guide" Link
  Then I should see "WebdriverIO - Developer Guide" title

 Scenario: Verify API Page title        
  Given I am on the WebdriverIO homepage
  When I click on "API" Link
  Then I should see "WebdriverIO - API Docs" title

 Scenario: Verify Contributing Page title        
  Given I am on the WebdriverIO homepage
  When I click on "Contribute" Link
  Then I should see "WebdriverIO - Contributing" title

 Scenario: Display Improve the doc button on Guide page        
  Given I am on the WebdriverIO homepage
  When I click on "Guide" Link
  Then I should see "Improve this doc" button

 Scenario: Display Improve the doc button on API page        
  Given I am on the WebdriverIO homepage
  When I click on "API" Link
  Then I should see "Improve this doc" button