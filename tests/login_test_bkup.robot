*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com/
${BROWSER}     chrome
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Valid Login Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text      id:user-name    ${USERNAME}
    Input Password  id:password     ${PASSWORD}

    Click Button    id:login-button

    Wait Until Element Is Visible    xpath=//span[text()='Products']    10s

    Element Should Be Visible    xpath=//span[text()='Products']

    Capture Page Screenshot

    Close Browser