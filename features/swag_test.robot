*** Settings ***
Resource    ../config/settings.resource
Resource    ../data/swag_elements.robot
Resource    ../pages/swag.robot

Test Setup  Open_Site
Test Teardown   Close_Test

Documentation   Loggin on the test site
...   the user acesses
...   check if all buttons are working

*** Test Cases ***
Scenario: Enter the alerts page and test them
    Given that the user accesses the test site
    When testing all the buttons and their functionality
    And test
    Then test2