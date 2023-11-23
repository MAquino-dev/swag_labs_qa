*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn

*** Variables ***
${url_site}     https://www.saucedemo.com

*** Keywords ***
Open_Site
    Open Browser    ${url_site}    chrome
    Maximize Browser Window


Close_Test
    Capture Page Screenshot
    Log  Test Passed
    Close Browser