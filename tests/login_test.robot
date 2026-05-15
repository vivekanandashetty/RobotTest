*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valid Login Test

    Open SauceDemo

    Login To Application

    Element Should Be Visible
    ...    xpath=//span[text()='Products']

    Close Application