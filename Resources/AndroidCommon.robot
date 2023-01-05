*** Settings ***
Library  AppiumLibrary

*** Variables ***
env var
    ${LT_USERNAME}=    Get Environment Variable    LT_USERNAME
    ${LT_ACCESS_KEY}=    Get Environment Variable    LT_ACCESS_KEY

@{_tmp}   
    ...   platformName: ${platformName}
    ...   platformVersion: ${version}
    ...   deviceName: ${deviceName}
    ...   visual: ${visual}
    ...   network: ${network}
    ...   isRealMobile: ${isRealMobile}
    ...   name: 'RobotFramework Lambda Test'
    ...   app: 'lt://proverbial-android'

#${BROWSER}         ${ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})}
${REMOTE_URL}       https://${LT_USERNAME}:${LT_ACCESS_KEY}@mobile-hub.lambdatest.com/wd/hub
#${app}             lt://APP100201841649255527998398
${app}              lt://proverbial-android
${TIMEOUT}          3000

*** Keywords ***

Open test app
    [Timeout]   ${TIMEOUT}
    #Open Application  ${REMOTE_URL}  platformName=${platformName}  platformVersion=${version}  deviceName=${deviceName}  visual=${visual}  network=${network}  isRealMobile=${isRealMobile}  name="RobotFramework Lambda Test"
    Open Application   ${REMOTE_URL}   platformName=${platformName}   platformVersion=${version}   deviceName=${deviceName}   visual=${visual}   network=${network}   isRealMobile=${isRealMobile}   app=${app}   name="RobotFramework Lambda Test"

Close test app
    Close All Applications