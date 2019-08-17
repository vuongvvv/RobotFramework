*** Variables ***
${drd_travel_plan}    (//button[@class="btn btn-default"])[1]
${drd_travel_people}    (//button[@class="btn btn-default"])[2]
${drd_travel_location}    (//button[@class="btn btn-default"])[3]

#Dynamic locators
${tab_service}    //ul[@class="nav nav-tabs nav-justified"]//li[@data-gb-name="_DYNAMIC_0"]
${tab_insurance_sub_service}    //div[@id="Insurance"]//li[@data-gb-name="_DYNAMIC_0"]
${drd_item_travel_plan}    //span[@class="two-col"][contains(text(),"_DYNAMIC_0")]//following-sibling::link
${drd_item_travel_people}    //span[contains(text(),"_DYNAMIC_0")]//following-sibling::link
${drd_item_travel_location}    //span[contains(text(),"_DYNAMIC_0")]//following-sibling::link