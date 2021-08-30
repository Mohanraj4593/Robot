*** Settings ***
Documentation    Browser login verification Test
Library  SeleniumLibrary


*** Variables ***
${webdriver}  firefox
${website}  https://login.yahoo.com/
${username}  mohanguttedar1234@yahoo.com
${password}  7022646830

*** Test Cases ***
Valid Login
    [Tags]    Valid Check
    Open Browser  ${website}  ${webdriver}
    Input Text  //*[@id="login-username"]  ${username}
    Click Button  //*[@id="login-signin"]
    Wait Until Element Is Visible  //*[@id="login-passwd"]
    Input Password  //*[@id="login-passwd"]  ${password}
    Click Button  //*[@id="login-signin"]
    Sleep  1s
    Close Browser

In valid Login
    Tags]    In-Valid Check
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