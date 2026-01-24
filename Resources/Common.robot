*** Settings ***
Library  AppiumLibrary

*** Variables ***
${username}            %{LT_USERNAME}
${accesskey}           %{LT_ACCESS_KEY}
${LT_GRID_URL}          https://${username}:${accesskey}@mobile-hub.lambdatest.com/wd/hub
${platformName}         ios
${platformVersion}      15  # Set your default version
${deviceName}           iPhone.*
${visual}               True
${network}              True
${isRealMobile}         True
${LT_APP_ID}            lt://proverbial-ios
${TIMEOUT}              3000
${devicelog}            True



*** Keywords ***

Open test app
    [Timeout]   ${TIMEOUT}
    ${CAPABILITIES}=    Create Dictionary
    ...   platformName=${platformName}
    ...   platformVersion=${platformVersion}
    ...   deviceName=${deviceName}
    ...   visual=${visual}
    ...   network=${network}
    ...   devicelog=${devicelog}
    ...   isRealMobile=${isRealMobile}
    ...   name=LT_Appium_Robot_App_iOS
    ...   build=LT_Appium_Robot_App_Automation
    ...   app=${LT_APP_ID}

    ${REMOTE_URL}=    Set Variable    https://${username}:${accesskey}@mobile-hub.lambdatest.com/wd/hub
    ${APP_ID}=        Set Variable    ${LT_APP_ID}
    
    Open Application  ${REMOTE_URL}  platformName=ios  platformVersion=${platformVersion}  deviceName=${deviceName}  visual=${visual}  network=${network}  devicelog=${devicelog}  isRealMobile=${isRealMobile}  app=${APP_ID}  name=LT_Appium_Robot_App_iOS  build=LT_Appium_Robot_App_Automation

Close test app
    Close All Applications
