*** Settings ***
Library  Selenium2Library
Library  BuiltIn


*** Variables ***
${womenMenu}        xpath=//*[@title='Women' and @class='sf-with-ul']
${dressesMenu}      xpath=//*[@id='block_top_menu']/ul/li[2]/a
${tshirtsMenu}      xpath=//*[@id="block_top_menu"]/ul/li[3]/a