*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/locators/go_bear/common_locators.robot
Resource    ../common/locator_common.robot   

*** Keywords ***
Select Year On Year Picker
    [Arguments]    ${year}
    ${locator}=    Generate Element From Dynamic Locator    ${btn_select_year_on_year_picker}    ${year}
    :FOR    ${i}    IN RANGE    100
    \    ${is_locator_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    \    Run Keyword If    ${is_locator_visible}==${True}    Run Keywords    Click Element    ${locator}    AND    Exit For Loop
    \    ...    ELSE    Click Element    ${btn_next_on_year_picker}

Select Month On Month Picker
    [Arguments]    ${month}
    ${locator}=    Generate Element From Dynamic Locator    ${btn_select_month_on_month_picker}    ${month}
    Click Element    ${locator}    

Select Date On Date Picker
    [Arguments]    ${date}
    ${locator}=    Generate Element From Dynamic Locator    ${btn_select_date_on_date_picker}    ${date}
    Click Element    ${locator}
       
Select Start Date
    [Arguments]    ${year}    ${month}    ${day}
    Click Element    ${dtp_start_date}
    Click Element    ${btn_date_picker_days_switch}     
    Click Element    ${btn_date_picker_months_switch}
    Select Year On Year Picker    ${year}
    Select Month On Month Picker    ${month}
    Select Date On Date Picker    ${day}

Select End Date
    [Arguments]    ${year}    ${month}    ${day}
    Click Element    ${dtp_end_date}
    Click Element    ${btn_date_picker_days_switch}     
    Click Element    ${btn_date_picker_months_switch}
    Select Year On Year Picker    ${year}
    Select Month On Month Picker    ${month}
    Select Date On Date Picker    ${day}    