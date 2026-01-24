*** Settings ***
Library  AppiumLibrary

*** Variables ***

${username}             shivanks
${accesskey}            LT_V6UEGtFRGiIPH4QcUdNKQv4RIetJjVfXKKIEkrP3Sk15opJ
${LT_GRID_URL}          https://${username}:${accesskey}@mobile-hub.lambdatest.com/wd/hub
${platformName}         android
${platformVersion}      12  # Set your default version
${deviceName}           Galaxy.*
${visual}               True
${network}              True
${isRealMobile}         True
${LT_APP_ID}            lt://proverbial-android
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
    ...   name=LT_Appium_Robot_App_Android
    ...   build=LT_Appium_Robot_App_Automation
    ...   app=${LT_APP_ID}
    TRY
        ${REMOTE_URL}=    Set Variable If    '%{LT_GRID_URL}' == ''    mobile-hub.lambdatest.com    %{LT_GRID_URL}
    EXCEPT
        ${REMOTE_URL}=    Set Variable    mobile-hub.lambdatest.com
    END
   # TRY
   #     ${APP_ID}=    Set Variable If    '%{LT_APP_ID}' == ''    lt://proverbial-android    %{LT_APP_ID}
   # EXCEPT
    #    ${APP_ID}=    Set Variable    lt://proverbial-android
   # END
   ${APP_ID}=    Set Variable If    '${LT_APP_ID}' != ''    ${LT_APP_ID}    lt://proverbial-android


#    ${REMOTE_URL}=   Set Variable       https://%{username}:%{accesskey}@${REMOTE_URL}/wd/hub
    ${REMOTE_URL}=   Set Variable    https://${username}:${accesskey}@${REMOTE_URL}/wd/hub


    Open Application  ${REMOTE_URL}  platformName=android  platformVersion=${platformVersion}  deviceName=${deviceName}  network=${network}    devicelog=${devicelog}  isRealMobile=${isRealMobile}  app=${APP_ID}  name=LT_Appium_Robot_App_Android  build=LT_Appium_Robot_App_Automation

Close test app
    Close All Applications