*** Settings ***
Library  Selenium2Library
Resource  ../Resource/Common/CommonKeyword.robot
Resource  ../Resource/PageObject/SignPage.robot


Test Setup      Open the site
Test Teardown   Close Browser

