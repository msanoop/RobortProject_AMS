*** Settings ***
Library    SeleniumLibrary    



*** Variables ***
${browser}    chrome
${url}    https://www.google.com
${searchbox}    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input



*** Test Cases ***
Google
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    50
    Element Should Be Visible    ${searchbox}    
    Element Should Be Enabled    ${searchbox}
    Click Element    ${searchbox}  
    Input Text    ${searchbox}    anoop
    Sleep    5    
    Clear Element Text    ${searchbox}
    Close Browser   



*** Keywords ***
      
