run_all_in_parallel:
	make -j test_GalaxyS20Plus #test_GalaxyS10

test_GalaxyS20Plus:
	robot --variable version:10 --variable platformName:Android --variable deviceName:"Galaxy S20" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/Android.robot

test_GalaxyS10:
	robot --variable version:10 --variable platformName:Android --variable deviceName:"Galaxy S10" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/Android.robot

test_Android1:
	robot --variable version:10 --variable platformName:android --variable deviceName:"Galaxy S20" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/Android.robot

test_ios1:
	robot --variable version:14 --variable platformName:ios --variable deviceName:"iPhone 12" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/IOS.robot

test_Web_ios:
	robot --variable version:14 --variable platformName:ios --variable deviceName:"iPhone 12" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/AndroidIosWeb.robot

test_Web_Android:
	robot --variable version:10 --variable platformName:android --variable deviceName:"Galaxy S20" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/AndroidIosWeb.robot	
