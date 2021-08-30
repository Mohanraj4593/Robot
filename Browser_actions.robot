*** Settings ***
Documentation    Browser login verification Test
Library  SeleniumLibrary


*** Variables ***
${webdriver}  firefox
${website}  https://login.yahoo.com/
${username}  mohanguttedar1234@yahoo.com
${password}  7022646830

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Open Browser  ${website}  ${webdriver}
    Input Text  //*[@id="login-username"]  ${username}
    Click Button  //*[@id="login-signin"]
    Wait Until Element Is Visible  //*[@id="login-passwd"]
    Input Password  //*[@id="login-passwd"]  ${password}
    Click Button  //*[@id="login-signin"]
    Sleep  1s
    Close Browser
    
*** Keywords ***
Provided precondition
    Setup system under test