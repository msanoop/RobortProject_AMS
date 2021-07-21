*** Settings ***
Library    SeleniumLibrary    



*** Variables ***
${browser}    chrome
${url}    https://www.seleniumeasy.com/test/basic-radiobutton-demo.html



*** Test Cases ***
Radiobutton
    Open Browser    ${url}    ${browser}
    Set Browser Implicit Wait    5
    Maximize Browser Window
    # Set Selenium Speed    2
    Select Radio Button    optradio    Male
    Click Element    id=buttoncheck
    # Should Be Equal As Strings    first    second
    Sleep    5
    Element Should Be Visible    xpath=//*[@id="easycont"]/div/div[2]/div[1]/div[2]/p[3]
    Get Element Attribute    xpath=//*[@id="easycont"]/div/div[2]/div[1]/div[2]/p[3]    Radio button 'Male' is checked
    Sleep    2    
     



*** Keywords ***