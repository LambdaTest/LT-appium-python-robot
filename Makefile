run_all_in_parallel:
	make -j test_Android1 test_Android2 test_iOS1 test_iOS2

test_Android1:
	robot --variable version:10 --variable platform:Android --variable deviceName:"Galaxy S20" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:false --variable app:"lt://" Tests/Android.robot

test_Android2:
	robot --variable version:11 --variable platform:Android --variable deviceName:"Galaxy Note20 Ultra 5G" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:false --variable w3c:true --variable timezone:"UTC-04:00" --variable app:"lt://APP10160621161671623283164345" --variable fixedIP:"" Tests/Android.robot

test_iOS1:
	robot --variable version:14 --variable platform:iOS --variable deviceName:"iPhone 11" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:false --variable w3c:true --variable timezone:"UTC-04:00" --variable app:"lt://APP10160621161671099112549452" Tests/IOS.robot

test_iOS2:
	robot --variable version:14 --variable platform:iOS --variable deviceName:"iPhone 12" --variable isRealMobile:true --variable visual:true --variable network:false --variable console:false --variable app:"lt://" Tests/IOS.robot