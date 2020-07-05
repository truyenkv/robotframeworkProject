*** Settings ***
Library  Selenium2Library


*** Variables ***
${url}      http://automationpractice.com/index.php?controller=authentication&back=my-account

*** Keywords ***
Open the site
    Open Browser    ${url}      chrome

Close Browsers
    Close Browser

