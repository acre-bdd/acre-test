import time
import re

from radish import then, when

from acre.controls import Input, Link


@when("I search for '{text}'")
def i_see_the_title(step, text):
    searchbox = Input(id="search_form_input_homepage")
    searchbox.input(text)

    button = Input(id='search_button_homepage')
    button.click()


@then(re.compile(r"I (see|follow) the link '(.*)'"))
def i_see_the_link(step, command, text):
    link = Link(text=text)
    link.locate()
    if command == 'follow':
        link.click()

    time.sleep(5)
