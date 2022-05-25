# Robot ![pw](https://img.shields.io/badge/Robot%20Framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white)

<img height="300" src="https://img.shields.io/badge/Robot%20Framework-000000?style=for-the-badge&logo=robot-framework&logoColor=white">

*Robot Framework is a flexible, open-source test automation tool that can be used for acceptance testing and acceptance test-driven development. It's a keyword-driven testing framework that uses tabular test data syntax.*

*Learn the basics of [Appium testing on the LambdaTest platform.](https://www.lambdatest.com/support/docs/getting-started-with-appium-testing/)*

## Table of Contents

* [Objective](#objective)
* [Pre-requisites](#pre-requisites)
* [Run Your First Test](#run-your-first-test)

## Robot With Appium

In this topic, you will learn how to configure and run your **Robot** automation testing scripts with **Appium** on **LambdaTest Real Device Cloud platform**.

## Objective

By the end of this topic, you will be able to:

1. Run a sample automation script of **Robot** for application testing with **Appium** on **LambdaTest**.
2. Learn more about Desired Capabilities for Appium testing.
3. Explore advanced features of LambdaTest.

## Pre-requisites

Before you can start performing App automation testing with Appium, you would need to follow these steps:

- Install the latest stable Python build from the [official website](https://www.python.org/downloads/).
- Make sure **pip** is installed in your system. You can install **pip** from [here](https://pip.pypa.io/en/stable/installation/).

### Clone The Sample Project

**Step-1:** Clone the LambdaTest’s :link: [LT-appium-python-robot](https://github.com/LambdaTest/LT-appium-python-robot) repository and navigate to the code directory as shown below:

```bash
git clone https://github.com/LambdaTest/LT-appium-python-robot
cd LT-appium-python-robot
```

### Setting Up Your Authentication

Make sure you have your LambdaTest credentials with you to run test automation scripts on LambdaTest. To obtain your access credentials, [purchase a plan](https://billing.lambdatest.com/billing/plans) or access the [Automation Dashboard](https://appautomation.lambdatest.com/).

**Step-2:** Replace LambdaTest `username` and `accesskey` in the `common.robot` file as mentioned below:

```js title="common.robot"
*** Settings ***
Library  AppiumLibrary

*** Variables ***
// highlight-start
${username}         username
${accesskey}        accesskey
// highlight-end
${REMOTE_URL}       https://${username}:${accesskey}@mobile-hub.lambdatest.com/wd/hub
${TIMEOUT}          3000

*** Keywords ***
Open test app
    Open Application  ${REMOTE_URL}  platformName=${platform}  platformVersion=${version}  deviceName=${deviceName}  visual=${visual}  network=${network}  isRealMobile=${isRealMobile}   app=${app}   name=Robot Framework Sample Test    build=Appium Python Robot

Close test app
    Close Application
```

### Upload Your Application

**Step-3:** Upload your **_iOS_** application (.ipa file) or **_android_** application (.apk file) to the LambdaTest servers using our **REST API**. You need to provide your **Username** and **AccessKey** in the format `Username:AccessKey` in the **cURL** command for authentication. Make sure to add the path of the **appFile** in the cURL request. Here is an example cURL request to upload your app using our REST API:

**Using App File:**

**For Linux/macOS:**

{`curl -u "${ YOUR_LAMBDATEST_USERNAME()}:${ YOUR_LAMBDATEST_ACCESS_KEY()}" \\
--location --request POST 'https://manual-api.lambdatest.com/app/upload/realDevice' \\
--form 'name="Android_App"' \\
--form 'appFile=@"/Users/macuser/Downloads/proverbial_android.apk"' 
`}

**For Windows:**

{`curl -u "${ YOUR_LAMBDATEST_USERNAME()}:${ YOUR_LAMBDATEST_ACCESS_KEY()}" -X POST "https://manual-api.lambdatest.com/app/upload/realDevice" -F "appFile=@"/Users/macuser/Downloads/proverbial_android.apk""`}

**Using App URL:**

**For Linux/macOS:**
{`curl -u "${ YOUR_LAMBDATEST_USERNAME()}:${ YOUR_LAMBDATEST_ACCESS_KEY()}" \\
--location --request POST 'https://manual-api.lambdatest.com/app/upload/realDevice' \\
--form 'name="Android_App"' \\
--form 'url="https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk"'`}

**For Windows:**

{`curl -u "${ YOUR_LAMBDATEST_USERNAME()}:${ YOUR_LAMBDATEST_ACCESS_KEY()}" -X POST "https://manual-api.lambdatest.com/app/upload/realDevice" -d "{\"url\":\"https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk\",\"name\":\"sample.apk\"}"`}

**Tip:**

- If you do not have any **.apk** or **.ipa** file, you can run your sample tests on LambdaTest by using our sample :link: [Android app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk) or sample :link: [iOS app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_ios.ipa).
- Response of above cURL will be a **JSON** object containing the `App URL` of the format - <lt://APP123456789123456789> and will be used in the next step.

## Run Your First Test

Once you are done with the above-mentioned steps, you can initiate your first Robot test on LambdaTest.

Test Scenario: Check out [Android.robot](https://github.com/LambdaTest/LT-appium-python-robot/blob/master/Tests/Android.robot) file to view the sample test script for android and [iOS.java](https://github.com/LambdaTest/LT-appium-python-robot/blob/master/Tests/IOS.robot) for iOS.

### Configuring Your Test Capabilities

**Step-4:** You need to update your capabilities in `Makefile` files. In this sample project, we have provided the examples for running tests on both **Android** and **iOS** apps. We are passing platform name, platform version, device name and app url (generated earlier) along with other capabilities like build name and test name via capabilities object. The capabilities object in the sample code for a single test are defined as:

```python title="Makefile"
test_Android1:
	robot --variable version:10 --variable platform:Android --variable deviceName:"Galaxy S20" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:false --variable app:"lt://" Tests/Android.robot

test_iOS1:
	robot --variable version:14 --variable platform:iOS --variable deviceName:"iPhone 11" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:false --variable app:"lt://" Tests/IOS.robot
```

**Info Note:**

- You must add the generated **APP_URL** to the `"app"` capability in the config file.
- You can generate capabilities for your test requirements with the help of our inbuilt :link: **[Capabilities Generator tool](https://www.lambdatest.com/capabilities-generator/beta/index.html)**. A more Detailed Capability Guide is available [here :page_facing_up:](https://www.lambdatest.com/support/docs/desired-capabilities-in-appium/) .

### Executing The Tests

**Step-5:** Run the following command in the directory to install the relevant dependencies.

```bash
pip install -r requirements.txt
```

**Step-6:** Execute the following command to run your test on LambdaTest platform:

<Tabs className="docs__val">

<TabItem value="ios" label="iOS" default>

```bash
make test_iOS1
```

</TabItem>

<TabItem value="android" label="Android" default>

```bash
make test_Android1
```

</TabItem>

</Tabs>

**Info:** Your test results would be displayed on the test console (or command-line interface if you are using terminal/cmd) and on the :link: [LambdaTest App Automation Dashboard](https://appautomation.lambdatest.com/build).

## Additional Links

- [Advanced Configuration for Capabilities](https://www.lambdatest.com/support/docs/desired-capabilities-in-appium/)
- [How to test locally hosted apps](https://www.lambdatest.com/support/docs/testing-locally-hosted-pages/)
- [How to integrate LambdaTest with CI/CD](https://www.lambdatest.com/support/docs/integrations-with-ci-cd-tools/)

## LambdaTest Community :busts_in_silhouette:

The [LambdaTest Community](https://community.lambdatest.com/) allows people to interact with tech enthusiasts. Connect, ask questions, and learn from tech-savvy people. Discuss best practises in web development, testing, and DevOps with professionals from across the globe.

## Documentation & Resources :books:
     
If you want to learn more about the LambdaTest's features, setup, and usage, visit the [LambdaTest documentation](https://www.lambdatest.com/support/docs/). You can also find in-depth tutorials around test automation, mobile app testing, responsive testing, manual testing on [LambdaTest Blog](https://www.lambdatest.com/blog/) and [LambdaTest Learning Hub](https://www.lambdatest.com/learning-hub/).     
      
 ## About LambdaTest

[LambdaTest](https://www.lambdatest.com) is a leading test execution and orchestration platform that is fast, reliable, scalable, and secure. It allows users to run both manual and automated testing of web and mobile apps across 3000+ different browsers, operating systems, and real device combinations. Using LambdaTest, businesses can ensure quicker developer feedback and hence achieve faster go to market. Over 500 enterprises and 1 Million + users across 130+ countries rely on LambdaTest for their testing needs.

[<img height="70" src="https://user-images.githubusercontent.com/70570645/169649126-ed61f6de-49b5-4593-80cf-3391ca40d665.PNG">](https://accounts.lambdatest.com/register)
      
## We are here to help you :headphones:

* Got a query? we are available 24x7 to help. [Contact Us](mailto:support@lambdatest.com)
* For more info, visit - https://www.lambdatest.com
