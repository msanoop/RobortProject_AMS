*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
TC1
    Open Browser    https://google.com/    chrome
    Input Text    name=q    anoop
    Set Browser Implicit Wait    5
    Click Button    name=btnK    
    Sleep    2        
    Close Browser
    # Log    Test Completed    