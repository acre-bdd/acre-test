@release
Feature: Navigate in the browser
    In order to test web applications
    I need to be able to navigate around in the browser.

    @tid:9006
    Scenario: search using basic steps
        Given I start the browser
        When I navigate to "http://www.duckduckgo.com"
        Then I see the title "DuckDuckGo"

        When I write "python.org" to #search_form_input_homepage
        Then I see the link "Welcome to Python.org"
        When I click on the link "Welcome to Python.org"
        Then I see the title "Welcome to Python.org"
        When I click on @donate-button
        Then I see the heading "Donation for the PSF"
        Then I see the header @entry-header
        Then I see the heading @entry-title "Donation for the PSF"
        Then I see the #intro_text "About the PSF"
        Then I see the div #intro_text "About the PSF"
        Then I see the heading "About the PSF"
        Then I see the paragraph "Python Software Foundation"


        Then I close the browser
