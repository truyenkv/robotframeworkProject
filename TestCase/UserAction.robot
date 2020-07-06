*** Settings ***
Library  Selenium2Library
Library  String
Library  BuiltIn
Resource  ../Resource/Common/CommonKeyword.robot
Resource  ../Resource/PageObject/SignPage.robot
Resource  ../Resource/PageObject/MyAccountPage.robot
Resource  ../Resource/PageObject/CreateAccountPage.robot

Test Setup      Open The Sign In Screen
Test Teardown   Close Browser

*** Test Cases ***

