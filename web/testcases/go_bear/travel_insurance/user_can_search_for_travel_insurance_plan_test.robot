*** Settings ***
Documentation    User can search for travel insurance plan

Resource    ../../../resources/init.robot
Resource    ../../../keywords/go_bear/common_keywords.robot
Resource    ../../../keywords/go_bear/home_keywords.robot
Resource    ../../../keywords/go_bear/travel_insurance_search_results_keywords.robot  

Test Setup    Open Browser With Option    ${GO_BEAR_URL}    headless_mode=${False}    
Test Teardown    Clean Environment

*** Variables ***
${service_name}    Insurance
${insurance_sub_service_name}    Travel
${insurance_travel_plan}    single trip
${insurance_travel_people}    2 persons
${insurance_travel_location}    Thailand
${expected_number_travel_insurance_plans}    3
${insurance_filter}    Malayan Insurance
${sort_option}    Price: High to low
${policy_detail}    annual trip
${destination}    Asia

*** Test Cases ***
TC_GOBEAR_01
    [Documentation]     Verify User can search for travel insurance plan
    [Tags]    Regression    Sanity    Smoke
    Select Service    ${service_name}
    Select Insurance Sub Service    ${insurance_sub_service_name}
    Select Insurance Travel Plan    ${insurance_travel_plan}
    Select Insurance Travel People    ${insurance_travel_people}
    Select Insurance Travel Location    ${insurance_travel_location}
    Select Start Date    2021    Aug    25
    Select End Date    2021    Aug    26
    Click On Show My Results Button
    Verify Number Of Travel Insurance More Than    ${expected_number_travel_insurance_plans}
    Select Insurer Filter    ${insurance_filter}
    Verify All Insurance Card Name    ${insurance_filter}
    Select Sort Option    ${sort_option}
    Verify Insurance Cards Price Sorting    desc
    Select Policy Type Details    ${policy_detail}
    Select Destination    ${destination}
    Select Start Date    2021    Aug    26
    Wait Until Number Of Insurance Plans Changed
    Click See More Button
    Set Slider Min Value    Personal Accident    300000    2000000
    