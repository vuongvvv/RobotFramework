*** Settings ***
Library    Collections
Resource    ../../resources/locators/go_bear/travel_insurance_search_results_locators.robot
Resource    ../common/locator_common.robot
Library    SeleniumLibrary    

*** Keywords ***
Wait Until Number Of Insurance Plans Changed
    ${current_text}=    SeleniumLibrary.Get Text    ${lbl_number_plans}
    :FOR    ${index}    IN RANGE    1    5
    \    ${checked_text}=    SeleniumLibrary.Get Text    ${lbl_number_plans}
    \    Run Keyword If    '${current_text}'=='${checked_text}'    Run Keywords    SeleniumLibrary.Get Text    ${lbl_number_plans}    AND    Sleep    1s
    \    ...    ELSE    Exit For Loop
    
Verify Number Of Travel Insurance More Than
    [Arguments]    ${expected_number_travel_insurance_plans}
    Wait Until Element Is Visible    ${pnl_travel_insurance}
    ${number_travel_insurance_plans}=    Get Element Count    ${pnl_travel_insurance}
    Should Be True    ${number_travel_insurance_plans} >= ${expected_number_travel_insurance_plans}

Select Insurer Filter
    [Arguments]    ${insurer_filter}
    ${locator}=    Generate Element From Dynamic Locator    ${chk_insurers_filter}    ${insurer_filter}
    Click Element    ${locator}
    Wait Until Number Of Insurance Plans Changed

Verify All Insurance Card Name
    [Arguments]    ${expected_name}
    ${count}=    Get Element Count    ${lbl_insurance_card_name}
    :FOR    ${index}    IN RANGE    1    ${count+1}
    \    SeleniumLibrary.Element Text Should Be    (${lbl_insurance_card_name})[${index}]    ${expected_name}        

Select Sort Option
    [Arguments]    ${sort_option}
    ${locator}=    Generate Element From Dynamic Locator    ${rdo_sort_option}    ${sort_option}   
    Click Element    ${locator}
    Wait Until Number Of Insurance Plans Changed

Verify Insurance Cards Price Sorting
    [Arguments]    ${sort}
    @{price_list}=    Create List
    ${count}=    Get Element Count    ${lbl_insurance_plan_price}
    :FOR    ${index}    IN RANGE    1    ${count+1}
    \    ${price}=    SeleniumLibrary.Get Text    (${lbl_insurance_plan_price})[${index}]
    \    Append To List    ${price_list}    ${price}
    ${copy_list}=    Copy List    ${price_list}
    Sort List    ${copy_list}
    Run Keyword If    '${sort}'!='asc'    Reverse List    ${copy_list}
    Lists Should Be Equal    ${price_list}    ${copy_list}      
   
Select Policy Type Details
    [Arguments]    ${policy_type_details}
    ${locator}=    Generate Element From Dynamic Locator    ${rdo_policy_type_details}    ${policy_type_details}
    Click Element    ${locator}
    Wait Until Number Of Insurance Plans Changed  

Click See More Button
    Scroll Element Into View    ${btn_see_more}
    Click Element    ${btn_see_more}

Select Destination
    [Arguments]    ${destination}
    Click Element    ${drd_destination}
    ${locator}=    Generate Element From Dynamic Locator    ${drd_item_destination}    ${destination}   
    Click Element    ${locator}
    Wait Until Number Of Insurance Plans Changed

Set Slider Min Value
    [Arguments]    ${slider_name}    ${expected_min_value}    ${expected_max_value}
    ${min_locator}=    Generate Element From Dynamic Locator    ${btn_slider_min}    ${slider_name}
    ${x_min_coordinate}=    Get Horizontal Position    ${min_locator}
    ${min_value}=    SeleniumLibrary.Get Element Attribute    ${min_locator}    aria-valuemin
    
    ${max_locator}=    Generate Element From Dynamic Locator    ${btn_slider_max}    ${slider_name}
    ${x_max_coordinate}=    SeleniumLibrary.Get Horizontal Position    ${max_locator}
    ${max_value}=    SeleniumLibrary.Get Element Attribute    ${min_locator}    aria-valuemax
    
    ${offset_to_move_min}=    Evaluate    (${x_max_coordinate} - ${x_min_coordinate}) * ${expected_min_value} / (${max_value} - ${min_value})
    SeleniumLibrary.Drag And Drop By Offset    ${min_locator}    ${offset_to_move_min}    0
    Wait Until Element Is Visible    ${pnl_travel_insurance}
    
    ${offset_to_move_max}=    Evaluate    (${x_max_coordinate} - ${x_min_coordinate}) * (${max_value} - ${expected_max_value}) / (${max_value} - ${min_value}) * -1
    SeleniumLibrary.Drag And Drop By Offset    ${max_locator}    ${offset_to_move_max}    0
    Wait Until Element Is Visible    ${pnl_travel_insurance}