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