*** Settings ***
Library  AppiumLibrary

*** Variables ***

@{_tmp}   platformName: ${platform}
    ...   platformVersion: ${version}
    ...   deviceName:${deviceName}
    ...   visual: ${visual}
    ...   network: ${network}
    ...   isRealMobile: ${isRealMobile}
    ...   name: 'RobotFramework Lambda Test'
    ...   app: 'lt://APP10020211648037120590170'

#${BROWSER}          ${ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})}
${REMOTE_URL}       https://ankitagarwal:oWiWwbdUGNg0RuUkTid4E1IL6w2nbavQLBFFcolfIwtbA6Ey3K@qa-beta-hub.lambdatest.com/wd/hub
#${app}              lt://APP100201841649255527998398
${app}              lt://APP10093511649258101281814
${TIMEOUT}          3000

*** Keywords ***

Open test app
    [Timeout]   ${TIMEOUT}
    #Open Application  ${REMOTE_URL}  platformName=${platform}  platformVersion=${version}  deviceName=${deviceName}  visual=${visual}  network=${network}  isRealMobile=${isRealMobile}  name="RobotFramework Lambda Test"
    Open Application  ${REMOTE_URL}  platformName=${platform}  platformVersion=${version}  deviceName=${deviceName}  visual=${visual}  network=${network}  isRealMobile=${isRealMobile}  app=${app}  name="RobotFramework Lambda Test"

Close test app
    Close All Applications