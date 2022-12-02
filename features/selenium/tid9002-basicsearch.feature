@tid:9002
@release
@search
Feature: Search for data
    Search for data

    @fails
    Scenario: failed title lookup
        Given I start the browser
        When I navigate to "http://www.duckduckgo.com"
        Then I see the title "xDuckDuckGo"

    Scenario: search on duckduckgo
        Given I start the browser
        When I navigate to "http://www.duckduckgo.com"
        Then I see the title "DuckDuckGo"

        When I search for "python.org"
        Then I follow the link 'Welcome to Python.org'
        Then I see the title "Welcome to Python.org"

        Then I close the browser

