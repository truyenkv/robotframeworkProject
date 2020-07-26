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
${chck}     xpath=//*[@class='subcategory-name']


*** Test Cases ***
Verify subcategory of Women
    [Documentation]     check subcategory of Women. Keyword was defined at HomePage.robot
    Click element   ${womenMenu}
    Subcategory Must Have       TOPS DRESSES

Verify subcategory of Dresses
    [Documentation]     check subcategory of Dresses. Keyword was defined at HomePage.robot
    Click element   ${dressesMenu}
    Subcategory Must Have       CASUAL DRESSES EVENING DRESSES SUMMER DRESSES

Verify subcategory of Top
    [Documentation]     check1 subcategory of Tops in Women. Keyword was defined at HomePage.robot
    Mouse Over          ${womenMenu}
    Click Element       ${topsSubMenu}
    Subcategory Must Have       T-SHIRTS BLOUSES

Verify subcategory of Dresses
    [Documentation]     check subcategory of Dresses in Women. Keyword was defined at HomePage.robot
    Mouse Over          ${womenMenu}
    Click Element       ${dressSubMenu}
    Subcategory Must Have       CASUAL DRESSES EVENING DRESSES SUMMER DRESSES

Veirfy Menu T-Shirt doesn't submenu
    [Documentation]     check subcategory of T-shirt. Keyword was defined at HomePage.robot
    Click element   ${T-Shirts}
    Page Should Not Contain Element     ${subCateHeader}

