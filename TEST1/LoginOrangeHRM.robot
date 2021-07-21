*** Settings ***
Library    SeleniumLibrary
Library    String    
Test Setup    Login Test
Test Teardown    Close Window
*** Variables ***
@{open_browser}    https://opensource-demo.orangehrmlive.com/    chrome
@{credentials}    Admin    admin123
&{LoginData}    username=Admin    password=admin123

*** Test Cases ***
OrangeHRM
    CheckSitedetails



*** Keywords ***
Login Test
    # ${random}=    Generate Random String    3    [NUMBERS]
    Open Browser    ${open_browser}[0]    ${open_browser}[1]
    Maximize Browser Window
    Set Browser Implicit Wait    5
    # Input Text    id=txtUsername    ${credentials}[0]
    # Input Text    id=txtPassword    ${credentials}[1]
    # Input Text    id=txtUsername    ${LoginData}[username]
    Input Text    id=txtPassword    ${LoginData}[password]
    Click Button    id=btnLogin
    
CheckSitedetails
    Title Should Be    OrangeHRM
    Get Element Attribute    id=welcome    Welcome Paul
    Click Element    id=welcome    
    # Click Element    xpath=//*[@id="welcome-menu"]/ul/li[3]
    Click Element    xpath=//*[@id="welcome-menu"]/ul/li[3]/a    
    # Capture Element Screenshot    xpath=//*[@id="welcome-menu"]/ul/li[3] 
    
Random String test        
    ${random}=    Generate Random String    3    [NUMBERS]
    Open Browser    ${open_browser}[0]    ${open_browser}[1]
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    ${random}