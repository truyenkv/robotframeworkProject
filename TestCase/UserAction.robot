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

*** Test Cases ***
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
