*** Settings ***
Library  AppiumLibrary

*** Variables ***
${username}             %{LT_USERNAME}
${accesskey}            %{LT_ACCESS_KEY}
${LT_GRID_URL}          https://${username}:${accesskey}@mobile-hub.lambdatest.com/wd/hub
${platformName}         android
${platformVersion}      11  # Set your default version
${deviceName}           Galaxy.*
${visual}               True
${devicelog}            True
${network}              True
${console}              True
${isRealMobile}         True
${TIMEOUT}              3000


*** Keywords ***

Open test app
    [Timeout]   ${TIMEOUT}
    ${CAPABILITIES}=    Create Dictionary
    ...   platformName=${platformName}
    ...   platformVersion=${platformVersion}
    ...   deviceName=${deviceName}
    ...   visual=${visual}
    ...   network=${network}
    ...   console=${console}
    ...   devicelog=${devicelog}
    ...   isRealMobile=${isRealMobile}
    ...   name=LT_Appium_Robot_App_Android
    ...   build=LT_Appium_Robot_App_Automation
    

     ${REMOTE_URL}=    Set Variable    https://${username}:${accesskey}@mobile-hub.lambdatest.com/wd/hub

    Open Application  ${REMOTE_URL}  platformName=${platformName}  platformVersion=${platformVersion}  deviceName=${deviceName}  visual=${visual}  console=${console}  network=${network}  devicelog=${devicelog}  isRealMobile=${isRealMobile}  name=LT_Appium_Robot_Web  build=LT_Appium_Robot_Web_Automation

Close test app
    Close All Applications