*** Settings ***
Library  AppiumLibrary

*** Variables ***
${username}
${accesskey}
${REMOTE_URL}       https://kaustubhd:yrNdTqWNnOVkSTEQz1RLkBEC4TjTfKVlSkqDHjBT8bn37FKNcg@mobile-hub.lambdatest.com/wd/hub
${TIMEOUT}          3000

*** Keywords ***
Open test app
    &{LT_Options}    Create Dictionary
    ...    isRealMobile=${isRealMobile}
    ...    platformVersion=${version}
    ...    deviceName=${deviceName}
    ...    visual=${visual}
    ...    network=${network}
    ...    app=${app}
    ...    w3c=${w3c}
    ...    platformName=${platform}
    ...    appium:timezone=${timezone}
    ...    fixedIP=${fixedIP}
    &{DESIRED_CAPABILITIES}    Create Dictionary
    ...    LT:Options=&{LT_Options}
    Open Application  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}

Close test app
    Close Application