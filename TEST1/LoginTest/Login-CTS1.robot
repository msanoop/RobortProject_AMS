*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://automationpractice.com/index.php

*** Test Cases ***
LoginTestCTS
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    5
    # Click Element    link=Sign in
    # Set Browser Implicit Wait    5
    # Input Text    xpath=//*[@id="email"]    msanoop
    # Click Element    id=search_query_top
    # Input Text    id=search_query_top    testing
    # Click Element    //*[@id="searchbox"]/button
    # Set Browser Implicit Wait    50
    Title Should Be    My Store    
    Search
    
    
*** Keywords ***
Search
    Input Text    id=search_query_top    testing
    Click Element    //*[@id="searchbox"]/button
    Close Browser

