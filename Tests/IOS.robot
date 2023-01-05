*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test app
Test Teardown  Common.Close test app
 
*** Variables ***
${TIMEOUT}          3000

*** Test Cases ***

Example of connecting to Lambdatest via Robot Framework
	[Timeout]   ${TIMEOUT}
	Click element  id=color
	Click element  id=Text
	Click element  id=toast
		
	Click element  id=notification
	Click element  id=geoLocation
	Sleep	2 seconds
	
