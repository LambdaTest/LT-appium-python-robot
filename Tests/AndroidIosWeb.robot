*** Settings ***

Resource  ../Resources/CommonWeb.robot

Test Setup  CommonWeb.Open test app
Test Teardown  CommonWeb.Close test app
 
*** Variables ***
${TIMEOUT}          3000

*** Test Cases ***

Example of connecting to Lambdatest via Robot Framework
	[Timeout]   ${TIMEOUT}
	Go To URL    https://mfml.in/api/getInfo
	Sleep	10 seconds
	Click element  id=resolution
	Click element  id=location
	Click element  id=details
	Click element  id=timezone