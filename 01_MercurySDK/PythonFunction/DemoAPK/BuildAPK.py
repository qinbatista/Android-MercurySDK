import sys
import os
import platform

def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))

def main():
    #PythonFunction.FuncFunctionList.CleanCache()
    #PythonFunction.FuncFunctionList.RestSetting()
	os.chdir(PythonLocation())
	if os.path.isfile(PythonLocation()+"/app-release.apk"):
		os.remove("app-release.apk")
	os.system("gradle clean assemblerelease")
	if os.path.isfile("app/build/outputs/apk/release/app-release.apk"):
		os.rename("app/build/outputs/apk/release/app-release.apk",PythonLocation()+"/app-release.apk")

if __name__ == '__main__':
    main()
