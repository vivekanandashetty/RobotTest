*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com/
${BROWSER}     chrome
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login To Application
    Input Text      id=user-name    ${USERNAME}
    Input Password  id=password     ${PASSWORD}
    Click Button    id=login-button

    Wait Until Element Is Visible
    ...    xpath=//span[text()='Products']
    ...    10s

Close Application
    Close Browser