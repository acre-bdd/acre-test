@tid:9004
@release
Feature: Navigate in the browser
    In order to test web applications
    I need to be able to navigate around in the browser.

    Scenario: open github.com
        Given I start the browser
        When I navigate to "http://www.github.com"
        Then I see the title "GitHub"
        Then I close the browser

    Scenario: open radish on github.com
        Given I start the browser
        When I navigate to "https://github.com/radish-bdd/radish"
        Then I see the title "radish-bdd"
        Then I close the browser
