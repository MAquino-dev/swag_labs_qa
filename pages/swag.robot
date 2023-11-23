*** Settings ***
Resource    ../config/settings.resource
Resource    ../data/swag_elements.robot

*** Keywords ***
that the user accesses the test site
    Log      Enter in the site
    Go To   ${url_site}
    Input Text    ${username}    standard_user
    Input Text    ${password}    secret_sauce
    Click Element    ${login_button}

testing all the buttons and their functionality
    Log      Validate buttons
    Element Should Contain    ${logo}    Swag Labs
    Click Element    ${filter_by_letter}
    Click Element    ${price_high_to_low}
    Element Should Be Enabled    ${fleece_jacket}
    Click Element    ${fleece_jacket}
    Click Element    ${bolt_tshirt}
    Click Element    ${tshirt_red}
    Click Element    ${bike_light}
    Click Element    ${backpack}
    Click Element    ${onesie}
    Click Element    ${shopping_cart}

    #Execute JavaScript  window.scrollTo(0, 500)
    Set Focus To Element   ${remove_backpack}
    Wait Until Element Is Visible   ${remove_backpack}
    Click Element    ${remove_backpack}
    Element Should Be Enabled    ${continue_shopping}
    Click Element    ${checkout}

test
    Log   test
    Input Text    ${first_name}     Matias
    Input Text    ${last_name}    Sanchez
    Input Text    ${CEP}    12345678
    Click Element    ${continue_button}

test2
    Wait Until Element Is Visible   ${checkout_title}
    Element Should Contain    ${checkout_title}     Checkout: Overview
    Click Element    ${sauce_labs_bike_light}
    Wait Until Element Is Visible   ${bikelight_name item}
    Element Should Contain     ${bikelight_name item}    Sauce Labs Bike Light
    Click Element     ${remove_bikelight}
    Click Element    ${back_to_products}
    Sleep    3

    Element Should Contain    ${cart}    4
    Click Element    ${shopping_cart}
    Execute JavaScript  window.scrollTo(0, 500)
    Click Element   ${checkout}
    test
    Element Should Contain    ${checkout_title}     Checkout: Overview
    Execute JavaScript  window.scrollTo(0, 500)
    Click Element    ${finish}
    Element Should Contain    ${message}    Thank you for your order!
    Click Element    ${home}
    Element Should Contain    ${home_title_name}    Products