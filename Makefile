run_all_in_parallel:
	make -j test_GalaxyS20Plus #test_GalaxyS10

test_GalaxyS20Plus:
	robot --variable version:10 --variable platformName:Android --variable deviceName:"Galaxy S20" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:true --variable devicelog:true Tests/Android.robot

test_GalaxyS10:
	robot --variable version:10 --variable platformName:Android --variable deviceName:"Galaxy S10" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:true --variable devicelog:true Tests/Android.robot

test_Android1:
	robot --variable version:12 --variable platformName:android --variable deviceName:"Galaxy.*" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:true --variable devicelog:true Tests/Android.robot

test_ios1:
	robot --variable version:15 --variable platformName:ios --variable deviceName:"iPhone.*" --variable isRealMobile:true --variable visual:true --variable network:true --variable console:true --variable devicelog:true  Tests/IOS.robot

test_Web_ios:
	robot --variable version:15 --variable platformName:ios --variable deviceName:"iPhone.*" --variable isRealMobile:true --variable visual:true --variable network:true --variable console:true --variable devicelog:true Tests/AndroidIosWeb.robot

test_Web_Android:
	robot --variable version:11 --variable platformName:android --variable deviceName:"Galaxy.*" --variable isRealMobile:true --variable visual:true --variable network:true --variable console:true --variable devicelog:true  Tests/AndroidIosWeb.robot	
