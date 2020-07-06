*** Settings ***
Library  Selenium2Library
Library  String
Library  BuiltIn
Resource  ../Resource/Common/CommonKeyword.robot
Resource  ../Resource/PageObject/SignPage.robot
Resource  ../Resource/PageObject/MyAccountPage.robot
Resource  ../Resource/PageObject/HomePage.robot
Resource  ../Resource/PageObject/CreateAccountPage.robot
Test Setup      Open Home Screen
Test Teardown   Close Browser

*** Variables ***
${chck}     xpath=//ul[@class='clearfix']
*** Test Cases ***
Check in firstime
    [Documentation]  just a text
    Click element   ${womenMenu}
    ${category}     Get Text    ${chck}
    Log to console  ${category}

