*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Add Item To Cart Test

    Open SauceDemo

    Login To Application

    # Add Product
    Click Button
    ...    id=add-to-cart-sauce-labs-backpack

    # Verify Cart Count
    Element Text Should Be
    ...    class=shopping_cart_badge
    ...    1

    # Open Cart
    Click Element    class=shopping_cart_link

    # Verify Product In Cart
    Element Should Be Visible
    ...    xpath=//div[text()='Sauce Labs Backpack']

    Capture Page Screenshot

    Close Application