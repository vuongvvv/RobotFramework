*** Settings ***
Documentation    User can search for travel insurance plan

Resource    ../../../resources/init.robot

Test Setup    Open Browser With Option    ${GO_BEAR_URL}    headless_mode=${False}    
Test Teardown    Clean Environment

*** Test Cases ***
TC_GOBEAR_01
    [Documentation]     Verify User can search for travel insurance plan
    [Tags]    Regression    Sanity    Smoke
    Log    vvv    