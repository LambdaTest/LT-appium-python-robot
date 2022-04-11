*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test app
Test Teardown  Common.Close test app
 
*** Variables ***
${TIMEOUT}          3000

*** Test Cases ***

Example of connecting to Lambdatest via Robot Framework
	[Timeout]   ${TIMEOUT}
	Click button  id=color
	Click button  id=Text
	Click button  id=Toast
		
	Click button  id=Notification
	Click button  id=GeoLocation
	sleep	${delay}
	Click button  id=Speed Test
	sleep	${delay}

	Click button  id='start speed test - connection type multi'
	sleep	${delay}
	Click button  id=Browser
	Input Text   id=Search	https://lambdatest.com
	Click button	id=find
