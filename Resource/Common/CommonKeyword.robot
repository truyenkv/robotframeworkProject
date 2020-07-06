*** Settings ***
Library  Selenium2Library


*** Variables ***
${urlSign}          http://automationpractice.com/index.php?controller=authentication&back=my-account
${urlHomePage}      http://automationpractice.com/index.php

*** Keywords ***
Open Home Screen
    Open Browser    ${urlHomePage}      chrome
    Maximize Browser Window

Open The Sign In Screen
    Open Browser    ${urlSign}          chrome
    Maximize Browser Window

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



