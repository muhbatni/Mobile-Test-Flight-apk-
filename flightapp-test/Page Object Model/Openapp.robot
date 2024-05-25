import AppiumLibrary

*** Settings ***
Library         AppiumLibrary

*** Settings ***
Documentation                Open application, close application, etc
Library                      AppiumLibrary


*** Variables ***
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      14.0
${DEVICE_NAME}           emulator-5554
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity

${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          support@ngendigital.commmm
${IVALID_PASSWORD}           abc1233333

*** Keywords ***
Open Flight Application
    Open Application       ${REMOTE_URL}     
    ...                    platformName=${PLATFORM_NAME}    
    ...                    platformVersion=${PLATFORM_VERSION}    
    ...                    deviceName=${DEVICE_NAME}    
    ...                    appPackage=${APP_PACKAGE}    
    ...                    appActivity=${APP_ACTIVITY}

Close Flight Application
    Close Application    

