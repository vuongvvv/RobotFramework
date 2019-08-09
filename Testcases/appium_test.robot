*** Settings ***
Library    AppiumLibrary    10    10

** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub
${PLATFORM_NAME}  iOS
${platform_version}  11.2
${DEVICE_NAME}  iPhone
${APP}  com.ascend.trueyourseller
${UDID}     B3B542A0-912C-4192-97B5-DCA4092A9892
${APP_LOCATION}        /Users/vuong.vie/Library/Developer/Xcode/DerivedData/WebDriverAgent-brdadhpuduowllgivnnvuygpwhzy/Build/Products/Debug-iphoneos/IntegrationApp.app
${APP_BUNDLE}    com.ascend.trueyourseller-TestVV
    
*** Test Cases ***
TC_001
    [Documentation]    VVV
    [Tags]    ABC
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=6.0.1    deviceName=3300447c9e4bb241    app=com.ascend.trueyourseller  automationName=appium  appPackage=/data/app/com.ascend.trueyourseller-1/base  appActivity=com.ascend.trueyourseller.MainActivity    newCommandTimeout=360
    Wait Until Element Is Visible    id=username
    Input Text    id=username    0815555555
    Input Password    id=password    P@ssw0rd
    Hide Keyboard    
    Click Element    id=submit_login
    # Wait Until Element Is Visible    //button[@class='android.widget.Button' and text()='LOGOUT']
    # Click Element    //button[@class='android.widget.Button' and text()='LOGOUT'] 
    # Close All Applications
    
TC_002
    [Documentation]    VVV2
    [Tags]    ABC2
    # Open Application  ${REMOTE_URL}    platformName=iOS    platformVersion=11.2    deviceName=${DEVICE_NAME}    app=${APP_LOCATION}    automationName=XCUITest    bundleId=${APP_BUNDLE}
    Open Application  ${REMOTE_URL}    xcodeOrgId=KWUJR79933    xcodeSigningId=iPhone Developer    bundleId=com.ascend.trueyourseller    platformName=iOS    platformVersion=11.2    deviceName=${DEVICE_NAME}    automationName=Appium    udid=f47f8f4a5b63954f4181ec1ef52acc5c5712c5f8
    # Open Application  ${REMOTE_URL}    platformName=iOS    platformVersion=11.2    deviceName=iPhone X    automationName=XCUITest    udid=B3B542A0-912C-4192-97B5-DCA4092A9892    bundleId=com.ascend.trueyourseller    newCommandTimeout=360
    Wait Until Element Is Visible    //XCUIElementTypeButton[@name="Alerts"]
    Click Element    //XCUIElementTypeButton[@name="Alerts"]
    Wait Until Element Is Visible    //XCUIElementTypeButton[@name="Create App Alert"]
    Click Element    //XCUIElementTypeButton[@name="Create App Alert"]
    Element Should Be Visible    //XCUIElementTypeButton[@name="Will do"]            
    # Wait Until Element Is Visible    //input[1]
    # Click Element    id=username
    # Input Text    //input[1]    0815555555
    # Input Password    name=password    P@ssw0rd
    # Swipe    15    15    200    200    
    # Hide Keyboard
    
TC_003
    [Documentation]    VVV21
    [Tags]    ABC21
    Open Application  ${REMOTE_URL}    platformName=iOS    platformVersion=9.3.5    deviceName=WLSQA’s iPhone    automationName=XCUITest    udid=776f50b2d951898d59ed9ecc9c3a08766dd128d2    bundleId=com.ascend.trueyourseller
    Wait Until Element Is Visible    //XCUIElementTypeApplication[@name="AX error -25205"]    