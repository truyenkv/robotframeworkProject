*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Variables ***
${pageHeader}       class=page-heading
${accountLink}      class=account
${logoutButton}     class=logout

*** Keywords ***
My Page Title Is
    [Documentation]  Check my page title
    [Arguments]  ${title}
    Wait Until Element Is Visible       ${pageHeader}
    Title Should Be     ${title}

The Account Name Should Be
    [Documentation]  check the account name is first name and last name
    [Arguments]  ${fullName}
    Wait Until Element Is Visible   ${accountLink}
    ${accoutName}   Get Text    ${accountLink}
    Should be equal     ${accoutName}   ${fullName}

User log out
    [Documentation]  click on logout button
    [Tags]  logout
    Wait Until Element Is Visible   ${logoutButton}
    Click Element    ${logoutButton}

