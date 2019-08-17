*** Settings ***
Resource    ../../resources/locators/go_bear/home_locators.robot
Resource    ../common/locator_common.robot   

*** Keywords ***
Select Service
    [Arguments]    ${service_name}
    ${locator}=    Generate Element From Dynamic Locator    ${tab_service}    ${service_name}
    Click Element    ${locator}

Select Insurance Sub Service
    [Arguments]    ${insurance_sub_service_name}
    ${locator}=    Generate Element From Dynamic Locator    ${tab_insurance_sub_service}    ${insurance_sub_service_name}
    Click Element    ${locator}

Select Insurance Travel Plan
    [Arguments]    ${insurance_travel_plan}
    Click Element    ${drd_travel_plan}    
    ${locator}=    Generate Element From Dynamic Locator    ${drd_item_travel_plan}    ${insurance_travel_plan}
    Click Element    ${locator}

Select Insurance Travel People
    [Arguments]    ${insurance_travel_people}
    Click Element    ${drd_travel_people}
    ${locator}=    Generate Element From Dynamic Locator    ${drd_item_travel_people}    ${insurance_travel_people}
    Click Element    ${locator}

Select Insurance Travel Location
    [Arguments]    ${insurance_travel_location}
    Click Element    ${drd_travel_location}
    ${locator}=    Generate Element From Dynamic Locator    ${drd_item_travel_location}    ${insurance_travel_location}
    Click Element    ${locator}

Click On Show My Results Button
    Click Button    Show my results