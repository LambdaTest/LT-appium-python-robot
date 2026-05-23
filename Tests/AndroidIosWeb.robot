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
	Execute Script    document.getElementById('resolution').click();
	Execute Script    document.getElementById('location').click();
	Execute Script    document.getElementById('details').click();
	Execute Script    document.getElementById('timezone').click();