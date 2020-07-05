*** Settings ***
Library  Selenium2Library
Library  BuiltIn
Library  String

*** Variables ***
${emailField}       id=email_create
${createButton}     id=SubmitCreate
${errorlocator}     id=create_account_error

*** Keywords ***
Create account with invalid email
    [Documentation]  Input invalid email to the email field
    [Arguments]  ${email}   ${err}
    Wait Until Element Is Visible        ${createButton}
    Input text      ${emailField}       ${email}
    Click button    ${createButton}
    Wait Until Element Is Visible       ${errorlocator}
    ${errMess}      Get Text        ${errorlocator}
    Should be equal     ${errMess}      ${err}

Input valid email to email field
    [Documentation]  Input valid email to email field
    [Arguments]  ${email}
    Wait Until Element Is Visible        ${createButton}
    Input text      ${emailField}       ${email}
    Click button    ${createButton}





