*** Variables ***
${pnl_travel_insurance}    //div[@class="col-sm-4 card-full"]
${btn_see_more}    //a[@class='btn-ripple more']
${drd_destination}    //div[@class='select-component']
${dtp_start_date_results_page}    //input[@name='dates-startdate']
${btn_date_picker_year_switch}    //div[@class='datepicker-years']//th[@class="datepicker-switch"]
${btn_date_picker_months_switch}    //div[@class='datepicker-months']//th[@class="datepicker-switch"]
${btn_date_picker_days_switch}    //div[@class='datepicker-days']//th[@class="datepicker-switch"]
${btn_next_on_year_picker}    //div[@class='datepicker-years']//th[@class="next"]
${lbl_insurance_card_name}    //h4[@class="name multi-name"]
${lbl_number_plans}    //div[@class='results-text pull-left']/h5
${lbl_insurance_plan_price}    //div[@class="policy-price"]/span[@class="value"]

#Dynamic locators
${rdo_sort_option}    //label[contains(text(),"_DYNAMIC_0")]//parent::div
${chk_insurers_filter}    //div[@data-filter-name="_DYNAMIC_0"]
${rdo_policy_type_details}    //label[contains(text(),"_DYNAMIC_0")]//parent::div
${btn_slider_min}    //label[contains(text(),"_DYNAMIC_0")]//following-sibling::div//div[@class="slider-handle min-slider-handle round"]
${btn_slider_max}    //label[contains(text(),"_DYNAMIC_0")]//following-sibling::div//div[@class="slider-handle max-slider-handle round"]
# ${drd_item_travel_plan}    //span[@class='two-col'][contains(text(),'_DYNAMIC_0')]//following-sibling::link
# ${drd_item_travel_people}    //span[contains(text(),'_DYNAMIC_0')]//following-sibling::link
${drd_item_destination}    (//span[@class="two-col"][text()="_DYNAMIC_0"])[1]//following-sibling::link
${btn_select_year_on_year_picker}    //div[@class='datepicker-years']//span[text()="_DYNAMIC_0"]
${btn_select_month_on_month_picker}    //div[@class='datepicker-months']//span[text()="_DYNAMIC_0"]
${btn_select_date_on_date_picker}    //div[@class='datepicker-days']//td[@class="day"][text()="_DYNAMIC_0"]