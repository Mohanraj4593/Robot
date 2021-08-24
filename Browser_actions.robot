*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${webdriver}  chrome
${website}  https://login.yahoo.com/
${username}  mohanguttedar1234@yahoo.com
${password}  70226468305

*** Test Cases ***
Login test case with valid credentials
    [Tags]  Valid Login Test
    Open Browser  ${website}  ${webdriver}
    Input Text  //*[@id="login-username"]  mohanguttedar1234@yahoo.com
    Click Button  //*[@id="login-signin"]
    Wait Until Element Is Visible  //*[@id="login-passwd"]
    Input Password  //*[@id="login-passwd"]  7022646830
    Click Button  //*[@id="login-signin"]
    Sleep  1s
    Close Browser

    [Tags]  In-Valid Login Test
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