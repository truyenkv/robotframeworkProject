*** Settings ***
Library  Selenium2Library


*** Variables ***
${url}      http://automationpractice.com/index.php?controller=authentication&back=my-account

*** Keywords ***
Open the site
    Open Browser    ${url}      chrome

Close Browsers
    Close Browser

Generate Text
    [Documentation]  create valid email
    ${randome}   Generate Random String      3   [LOWER]
    [Return]    ${randome}

Generate Email
    [Documentation]  create valid email
    ${randome}   Generate Random String      5   [LOWER]
    ${email}    Catenate    truyen${randome}@gmail.com
    [Return]    ${email}

