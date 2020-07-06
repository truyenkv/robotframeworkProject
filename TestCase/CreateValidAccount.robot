*** Settings ***
Library  Selenium2Library
Library  String
Library  BuiltIn
Resource  ../Resource/Common/CommonKeyword.robot
Resource  ../Resource/PageObject/SignPage.robot
Resource  ../Resource/PageObject/MyAccountPage.robot
Resource  ../Resource/PageObject/CreateAccountPage.robot

Test Setup      Open the site
Test Teardown   Close Browser

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
    ${fullName}     Catenate    ${firstName} ${lastName}
    Input valid email to email field    ${email}
    Input First Name    ${firstName}
    Input Last Name     ${lastName}
    Input Password      ${password}
    Input Address       ${address}
    Input Zipcode       ${zipcode}
    Input City          ${City}
    Select State        ${state}
    Input Phone Number  ${phoneNum}
    Click Register Account Button
    My Page Title Is    My account - My Store
    Page Should Contain     Welcome to your account. Here you can manage all of your personal information and orders.
    The Account Name Should Be  ${fullName}

Verify error message when login with wrong account
    [Documentation]  check error with wrong account
    Login with account      kieuvantruyen.xxx@gmail.com     12345
    ${error}    Catenate    There is 1 error\nAuthentication failed.
    Error message with wrong account    ${error}

Verify user login with correct account successful
    [Documentation]  check My Page screen after user login succressful
    Login with account      kieuvantruyen.3dfish@gmail.com     12345
    My Page Title Is    My account - My Store
    The Account Name Should Be      Truyen Kieu

Verify user logout succressful
    [Documentation]  check My Page screen after user login succressful
    Login with account      kieuvantruyen.3dfish@gmail.com     12345
    User log out
    Page Should Contain Element     ${signinButton}



