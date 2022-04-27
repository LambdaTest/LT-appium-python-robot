# LT-appium-python-robot
Sample repo to run app automation on robot framework real device on LambdaTest

## Pre-requisites

---

Before you can start performing App automation testing with Appium, you would need to follow these steps:

- Install the latest stable Python build from the [official website](https://www.python.org/downloads/). We recommend using the latest version.
- Make sure **pip** is installed in your system. You can install **pip** from [here](https://pip.pypa.io/en/stable/installation/).

### Clone The Sample Project

**Step-1:** Clone the LambdaTest's [LT-appium-python-robot](https://github.com/LambdaTest/LT-appium-python-robot) and navigate to the code directory as shown below:

```bash
git clone https://github.com/LambdaTest/LT-appium-python-robot
cd LT-appium-python-robot
```


### Setting Up Your Authentication

Make sure you have your LambdaTest credentials with you to run test automation scripts on LambdaTest. To obtain your access credentials, [purchase a plan](https://billing.lambdatest.com/billing/plans) or access the [Automation Dashboard](https://appautomation.lambdatest.com/).

**Step-2:** Set LambdaTest `Username` and `Accesskey` in the Common.robot file.

### Upload Your Application

**Step-3:** Upload your **_iOS_** application (.ipa file) or **_android_** application (.apk file) to the LambdaTest servers using our **REST API**. You need to provide your **Username** and **AccessKey** in the format `Username:AccessKey` in the **cURL** command for authentication. Make sure to add the path of the **appFile** in the cURL request. Here is an example cURL request to upload your app using our REST API:

```bash
curl -u "YOUR_LAMBDATEST_USERNAME":"YOUR_LAMBDATEST_ACCESS_KEY" \
--location --request POST 'https://manual-api.lambdatest.com/app/upload/realDevice' \
--form 'name="Android_App"' \
--form 'appFile=@"/Users/macuser/Downloads/proverbial_android.apk"' 
```

> **Note:**
>
> - Ensure to add the app_url received in the makefile. 
> - If you do not have any **.apk** or **.ipa** file, you can run your sample tests on LambdaTest by using our sample [Android app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_android.apk) or sample [iOS app](https://prod-mobile-artefacts.lambdatest.com/assets/docs/proverbial_ios.ipa).
> - Response of above cURL will be a **JSON** object containing the `App URL` of the format - <lt://APP123456789123456789> and will be used in the next step.

### Executing The Tests

**Step-4:** Run the following command in the directory wto install the relevant dependencies.

```bash
pip install -r requirements.txt
```

**Step-5:** Run the following command in the directory where your project has been saved to execute your build.

```bash
make test_iOS1
```

```bash
make test_Android1
```

**Running tests in Parallel :** Run the following command to run tests in parallel

```bash
make -j test_Android1 test_Android2 test_iOS1 test_iOS2
```

Your test results would be displayed on the test console (or command-line interface if you are using terminal/cmd) and on the [LambdaTest App Automation Dashboard](https://appautomation.lambdatest.com/build).