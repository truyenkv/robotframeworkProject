*** Settings ***
Library  Selenium2Library
Resource  ../Resource/Common/CommonKeyword.robot
Resource  ../Resource/PageObject/SignPage.robot


Test Setup      Open The Sign In Screen
Test Teardown   Close Browser
Test Template   Create account with invalid email


*** Test Cases ***
Email is existed    kieuvantruyen.3dfish@gmail.com          An account using this email address has already been registered. Please enter a valid password or request a new one.
Email is null       ${empty}                                Invalid email address.
