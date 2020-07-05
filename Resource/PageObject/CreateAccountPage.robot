*** Settings ***
Library  Selenium2Library
Library  BuiltIn


*** Variables ***
${firstNameField}       id=customer_firstname
${lastNameField}        id=customer_lastname
${emailField}           name=email
${passwordField}        name=passwd
${companyField}         name=company
${addressField}         id=address1
${cityField}            id=city
${stateDropList}        id=id_state
${zipCodeField}         id=postcode
${countryDropList}      id=id_country
${mobileField}          id=phone_mobile
${registerButton}       id=submitAccount

*** Keywords ***



Input First Name
    [Documentation]  input the valid first name
    [Arguments]  ${firstname}
    Wait Until Element Is Visible       ${firstNameField}
    Input Text      ${firstNameField}   ${firstname}

Input Last Name
    [Documentation]  input the valid last name
    [Arguments]  ${lastname}
    Wait Until Element Is Visible       ${lastNameField}
    Input Text      ${lastNameField}   ${lastname}

Input Password
    [Documentation]  input the valid password
    [Arguments]  ${password}
    Wait Until Element Is Visible       ${passwordField}
    Input Text      ${passwordField}   ${password}

Input Address
    [Documentation]  input the valid address
    [Arguments]  ${address}
    Wait Until Element Is Visible       ${addressField}
    Input Text      ${addressField}   ${address}

Input City
    [Documentation]  input the city
    [Arguments]  ${city}
    Wait Until Element Is Visible       ${cityField}
    Input Text      ${cityField}   ${city}

Input Zipcode
    [Documentation]  input the valid zipcode
    [Arguments]  ${zipcode}
    Wait Until Element Is Visible       ${zipCodeField}
    Input Text      ${zipCodeField}   ${zipcode}

Input Phone Number
    [Documentation]  input the valid phone
    [Arguments]  ${phone}
    Wait Until Element Is Visible       ${mobileField}
    Input Text      ${mobileField}   ${phone}

Select State
    [Documentation]  select a stats by dropdown list
    [Arguments]  ${label}
    Click Element   ${stateDropList}
    Select From List By Label   ${stateDropList}    ${label}

Click Register Account Button
    [Documentation]  click create account button
    Click Element   ${registerButton}





