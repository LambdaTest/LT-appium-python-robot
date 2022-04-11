run_all_in_parallel:
	make -j test_GalaxyS20Plus #test_GalaxyS10

test_GalaxyS20Plus:
	robot --variable version:10 --variable platform:Android --variable deviceName:"Galaxy S20" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/Android.robot

test_GalaxyS10:
	robot --variable version:10 --variable platform:Android --variable deviceName:"Galaxy S10" --variable isRealMobile:true --variable visual:false --variable network:false --variable console:false Tests/Android.robot