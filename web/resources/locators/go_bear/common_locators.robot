*** Variables ***
${btn_date_picker_year_switch}    //div[@class='datepicker-years']//th[@class="datepicker-switch"]
${btn_date_picker_months_switch}    //div[@class='datepicker-months']//th[@class="datepicker-switch"]
${btn_date_picker_days_switch}    //div[@class='datepicker-days']//th[@class="datepicker-switch"]
${btn_next_on_year_picker}    //div[@class='datepicker-years']//th[@class="next"]
${dtp_start_date}    //input[contains(@name,'startdate')]
${dtp_end_date}    //input[contains(@name,'enddate')]

#Dynamic locators
${btn_select_year_on_year_picker}    //div[@class='datepicker-years']//span[text()="_DYNAMIC_0"]
${btn_select_month_on_month_picker}    //div[@class='datepicker-months']//span[text()="_DYNAMIC_0"]
${btn_select_date_on_date_picker}    //div[@class='datepicker-days']//td[@class="day"][text()="_DYNAMIC_0"]