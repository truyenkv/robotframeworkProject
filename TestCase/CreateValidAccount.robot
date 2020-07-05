*** Settings ***
Library  Selenium2Library
Library  String
Library  BuiltIn
Resource  ../Resource/Common/CommonKeyword.robot
Resource  ../Resource/PageObject/SignPage.robot
Resource  ../Resource/PageObject/CreateAccountPage.robot

Test Setup      Open the site
#Test Teardown   Close Browser

*** Variables ***
${password}     12345
${address}      123 Street Ward 1
${city}         Ho Chi Minh
${zipcode}      10000
${phoneNum}     0962197753
${City}         Ho Chi Minh
${state}        Alaska

*** Test Cases ***
Create the account succesfully
    [Documentation]  Input valid information to create new account successfully
    ${email} =  Generate Email
    ${randomeText} =    Generate Text
    ${firstName}    Catenate    Truyen${randomeText}
    ${lastName}     Catenate    Kieu${randomeText}
    Input valid email to email field    ${email}
    Input First Name    ${firstName}
    Input Last Name     ${lastName}
    Input Password      ${password}
    Input Address       ${address}
    Input Zipcode       ${zipcode}
    Input City          ${City}
    Select State        ${state}
    Input Phone Number  ${phoneNum}

