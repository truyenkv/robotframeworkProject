*** Settings ***
Library  Selenium2Library
Library  BuiltIn


*** Variables ***
${subString}        xpath=//*[@class='subcategory-name']
${womenMenu}        xpath=//*[@title='Women' and @class='sf-with-ul']
${dressesMenu}      xpath=//*[@id='block_top_menu']/ul/li[2]/a
${dressSubMenu}     xpath=//*[@id='block_top_menu']/ul/li[1]/ul/li[2]/a
${topsSubMenu}      xpath=//*[@id='block_top_menu']/ul/li[1]/ul/li[1]/a
${subCateHeader}    class=subcategory-heading
${T-Shirts}         xpath=//*[@id="block_top_menu"]/ul/li[3]/a

*** Keywords ***
Subcategory Must Have
    [Documentation]  input the category and subcategory. Verify the subcategory with each category
    [Arguments]     ${subcategory}
    ${category}     Set Variable
    Wait Until Element Is Visible   ${subCateHeader}
    @{allcategory}      Get WebElements     ${subString}
    FOR    ${cate}     IN      @{allcategory}
        ${category}     Catenate    ${category} ${cate.text}
    END
    Should be equal     ${category.strip()}      ${subcategory}



