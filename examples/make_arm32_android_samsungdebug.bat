@echo off 
SET PATH=c:\FPC\3.1.1\bin\i386-win32\
SET nodosfilewarning=1
"c:\FPC\3.1.1\bin\i386-win32\ppcrossarm.exe" -Tandroid -Sd -B -b -g -gl -gw3 -CpARMv7A -CfVFPv3 -OpARMv7a -O- -O1 -XX -Xm -CX -Cg "-olibmain.so" "-FUFPCOutput\arm-android" "-FEFPCOutput\arm-android" "-Fl.\..\libs\libpngandroid\obj\local\armeabi-v7a" "-Fo.\..\libs\libpngandroid\obj\local\armeabi-v7a" "-Fl.\..\libs\sdl20androidarm32" "-Fo.\..\libs\sdl20androidarm32" -dDEBUG -dSamsungDebug -dPasVulkanPasMP -dPasVulkanUseSDL2 examples.dpr
copy /y "FPCOutput\\arm-android\\libmain.so" "android\\app\\src\\main\\jniLibs\\armeabi-v7a\\libmain.so"
