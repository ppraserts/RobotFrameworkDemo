*** Settings ***
Library         AppiumLibrary
Suite Setup    Start Application
Suite Teardown    Close Application

*** Variables ***
${REMOTE_URL}  http://127.0.0.1:4723/wd/hub

*** Test Cases ***
Test Sample Button
    [Documentation]  test demo click sample button and get popup message
    Click Element    id=button
    Page Should Contain Text    Hello click
    Click Element    id=button1

Test Page Contain Sample Text
    Page Should Contain Text    Sample Text

Test Toggle button click open and close
    Click Element    id=toggleButton
    ${toggleButton}    Get Element Attribute    id=toggleButton    text
    Should Be Equal    ${toggleButton}    เปิด
    Click Element    id=toggleButton
    ${toggleButton}    Get Element Attribute    id=toggleButton    text
    Should Be Equal    ${toggleButton}    ปิด

Test Switch button click open and close
    Click Element    id=switchButton
    ${toggleButton}    Get Element Attribute    id=switchButton    checked
    Should Be Equal    ${toggleButton}    true
    Click Element    id=switchButton
    ${toggleButton}    Get Element Attribute    id=switchButton    checked
    Should Be Equal    ${toggleButton}    false

Test CheckBox
    Click Element    id=checkBox
    ${toggleButton}    Get Element Attribute    id=checkBox    checked
    Should Be Equal    ${toggleButton}    true
    Click Element    id=checkBox
    ${toggleButton}    Get Element Attribute    id=checkBox    checked
    Should Be Equal    ${toggleButton}    false

Test Radiobutton
    Click Element    id=radioButton
    ${toggleButton}    Get Element Attribute    id=radioButton    checked
    Should Be Equal    ${toggleButton}    true

Test fill data to Textbox
    ${textbox}    Get Element Attribute    id=editText    text
    Should Be Equal    ${textbox}    edit text
    Input Text    id=editText    Test Test
    ${textbox}    Get Element Attribute    id=editText    text
    Should Be Equal    ${textbox}    Test Test

Test navigate to Page2
    Click Element    id=btnNext
    Wait Until Page Contains    Number 1
    Wait Until Page Contains    Number 2
    Page Should Contain Text    Number 1
    Page Should Contain Text    Number 2

*** Keywords ***
Start Application
    Open Application  ${REMOTE_URL}  platformName=Android  platformVersion=6.0  deviceName=192.168.56.101:5555  appPackage=com.geekybase.appfortraining  appActivity=com.geekybase.appfortraining.activity.MainActivity
    Sleep    3s
