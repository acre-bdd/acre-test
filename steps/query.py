import re

from radish import then, when

from acre.controls import Input, Link


@when('I search for {text:QuotedString}')
def i_see_the_title(step, text):
    searchbox = Input(id="search_form_input_homepage")
    searchbox.input(text)

    button = Input(id='search_button_homepage')
    button.click()


@then(re.compile(r"I follow the link '(.*)'"))
def i_follow_the_link(step, text):
    link = Link(text=text)
    link.locate()
    link.click()
