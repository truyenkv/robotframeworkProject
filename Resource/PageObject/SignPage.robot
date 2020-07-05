*** Settings ***
Library  Selenium2Library
Library  BuiltIn
Library  String

*** Variables ***
${emailField}       id=email_create
${createButton}     id=SubmitCreate
${errorlocator}     id=create_account_error
${emailLoginField}       id=email
${passwordField}    id=passwd
${signinButton}     id=SubmitLogin
${errorLogin}       xpath=//*[@class='alert alert-danger']

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

Login with account
    [Documentation]  Input username and password to login form
    [Arguments]  ${email}    ${password}
    Wait Until Element Is Visible       ${signinButton}
    Input Text      ${emailLoginField}       ${email}
    Input Text      ${passwordField}    ${password}
    Click Button    ${signinButton}

Error message with wrong account
    [Documentation]  check the error when user login incorrect account
    [Arguments]  ${errorMessage}
    Wait Until Element Is Visible   ${errorLogin}
    ${err}  Get Text    ${errorLogin}
    Should be equal     ${err}      ${errorMessage}






