import sys
import os
import platform

def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	#PythonFunction.FuncFunctionList.CleanCache()
	#PythonFunction.FuncFunctionList.RestSetting()
	os.chdir(PythonLocation())
	if os.path.isfile(os.path.dirname(os.path.realpath(__file__))+"/UnityPlugin.jar"):
		os.remove("UnityPlugin.jar")
	os.system("gradle clean makejar")
	if os.path.isfile("east2west/build/outputs/jar/UnityPlugin.jar"):
		os.rename("east2west/build/outputs/jar/UnityPlugin.jar",PythonLocation()+"/UnityPlugin.jar")


if __name__ == '__main__':
    main()
"""
@echo off
if exist game-release.apk (DEL game-release.apk)
call .\gradlew.bat clean assemblerelease
MOVE app\build\outputs\apk\release\app-release.apk game-release.apk
"""
