import sys, os, platform
import PythonFunction
import shutil
PythonVersion = ""
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def GetPythonCommand():
	global PythonVersion
	if PythonVersion!="":
		return PythonVersion
	version1 = os.popen("python3 --version")
	version2 = os.popen("python.exe --version")
	version3 = os.popen("python --version")
	# print("Version:"+version1.read())
	# print("show:"+version2.read())
	# print("show:"+version3.read())
	if version1.read()!="":
		PythonVersion="python3"
	if version2.read()!="":
		PythonVersion="python.exe"
	if version3.read()!="":
		PythonVersion="python"
	print("Your are using python command:"+PythonVersion)
	return PythonVersion
def main():
	try:
		if os.path.isfile(PythonLocation()+"/MultiThread")==False:
			print(PythonLocation()+"/MultiThread")
			PythonFunction.FuncFunctionList.CleanCache()
		param = sys.argv[1]
		list = param.split(",")
		print("APK Path		["+list[0]+"]")
		print("Package Name		["+list[1]+"]")
		print("Channel Name		["+list[2]+"]")
		print("Version Name		["+list[3]+"]")
		print("Version Code		["+list[4]+"]")
		print("AD			["+list[5]+"]")
		print("Configuration Folder	["+list[6]+"]")
		print("IOS			["+list[7]+"]")
		#目标APK地址
		#_path = PythonFunction.FuncFunctionList.BuildE2WTestAPK()+"/bin/game-release.apk"
		#_path = "C:/GameCode/Machinarium/Machinarium.E2W.UNI.2762-D.apk"
		#_path = r"C:\Users\qinba\Desktop\Samorost3-E2W-east2west.apk"
		#_path = r"C:\GameCode\LetsCreatePottery\lcp.apk"
		#_path = r"C:\GameCode\Machinarium\Machinarium.E2W.UNI.2762-D.apk"
		_path = list[0]
		#包名
		Packagename =  list[1]
		#渠道
		#Channel = "CUIZI20180413"
		#Channel = "huawei20180410"
		Channel = list[2]
		#版本名
		VersionName = list[3]
		#版本号
		VersionCode = list[4]
		#广告
		AD = list[5]
		#配置文件夹
		#Configuration = "Configuration_S3"
		#Configuration = "Configuration_LCP"
		Configuration = list[6]
		#IOS路径
		IOS = list[7]
		PythonFunction.FuncFunctionList.BuildChannelAPK(_path,Channel,AD,Packagename,VersionName,VersionCode,Configuration,IOS)
	except Exception as e:
		if os.path.isfile(PythonLocation()+"/01_E2WSDK/MultiThread"):
			os.remove(PythonLocation()+"/01_E2WSDK/MultiThread")
		print("E2WSDKBuild:"+e)
if __name__ == '__main__':
    main()