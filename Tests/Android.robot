*** Settings ***

Resource  ../Resources/AndroidCommon.robot

Test Setup  AndroidCommon.Open test app
Test Teardown  AndroidCommon.Close test app
 
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
	Click element  id=buttonPage
	Sleep	2 seconds
	Click element  xpath=//android.widget.Button[contains(@text,"SPEED TEST")]
	Sleep	2 seconds

	Click element  id=webview
	Input Text   id=url	https://lambdatest.com
	Click element  id=find
