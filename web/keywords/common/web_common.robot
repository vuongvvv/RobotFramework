*** Settings ***
Library    SeleniumLibrary    timeout=5s    implicit_wait=2s
Library    DateTime
Library    Collections
Library    String
Resource    locator_common.robot

*** Variables ***
@{chrome_arguments}    --disable-infobars    --headless    --disable-gpu     --no-sandbox

*** Keywords ***
Set Chrome Options
    [Documentation]    Set Chrome options for headless mode
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    : FOR    ${option}    IN    @{chrome_arguments}
    \    Call Method    ${options}    add_argument    ${option}
    [Return]    ${options}

Open Browser With Chrome Headless Mode
    [Arguments]      ${page_url}
    ${chrome_options}=    Set Chrome Options
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To    ${page_url}
    Set Window Size    1920    1080

Open Browser With Option
    [Arguments]    ${url}    ${browser}=Chrome    ${headless_mode}=${True}
    Run Keyword If    ${headless_mode} == ${True} and '${browser}' == 'Chrome'
    ...    Open Browser With Chrome Headless Mode    ${url}
    ...    ELSE IF    ${headless_mode} == ${False}
    ...    Navigate To Url    ${browser}    ${url}

Navigate To Url
    [Arguments]    ${browser}    ${url}
    Open Browser    ${url}    ${browser}
    # Maximize Browser Window - WebDriverException: Message: unknown error: failed to change window state to maximized, current state is normal
    Set Window Size    1920    1080

Clean Environment
    Close All Browsers