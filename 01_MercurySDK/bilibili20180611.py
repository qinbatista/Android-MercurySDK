import sys, os, platform
import PythonFunction
import chardet
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
Configuration ="Configuration_MCM"
Channel ="east2west"
PythonVersion = ""
def GetEncoding(_Path):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()
	myencoding = di["encoding"]
	if myencoding==None:
		myencoding ="utf-8"
	return myencoding
def CurrentPlatform():
	sysstr = platform.system()
	if(sysstr =="Windows"):
		return "Windows"
	elif(sysstr == "Linux"):
		return "Linux"
	elif(sysstr == "Darwin"):
		return "Mac"
	else:
		return "None"
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
	Channel ="bilibili20180611"	if len(sys.argv)==1:
		PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp","AppBaseInterface", False)
		PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"/01_E2WSDKPlugin/east2west/libs",PythonLocation()+"/../02_ChannelSdk/ChannelSDK","", False)
	
		PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show","AppBaseInterface", False)
		PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"/01_E2WSDKPlugin/east2west/libs",PythonLocation()+"/../02_ChannelSdk/ADSDK","", False)

		PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp",Channel.lower(), True)
		PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show",Channel.lower(), True)
		PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"/01_E2WSDKPlugin/east2west/libs",PythonLocation()+"/../02_ChannelSdk/ChannelSDK",Channel.lower(), True)
		PythonFunction.FuncFunctionList.CopyNecessaryLibs()
		print(PythonLocation()+"/01_E2WSDKPlugin/BuildJAR.bat")
		os.chdir(r''+PythonLocation()+"/01_E2WSDKPlugin")
		os.system(GetPythonCommand()+" BuildJAR.py")
		print("Building Channel: "+Channel)
		PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp","AppBaseInterface", False)
		PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"/01_E2WSDKPlugin/east2west/libs",PythonLocation()+"/../02_ChannelSdk/ChannelSDK","", False)
	
		PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show","AppBaseInterface", False)
		PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"/01_E2WSDKPlugin/east2west/libs",PythonLocation()+"/../02_ChannelSdk/ADSDK","", False)
	
		PythonFunction.FuncFunctionList.CopyNecessaryLibs()
		return
	Configuration = sys.argv[1]
	_path=""
	Packagename=""
	VersionName=""
	VersionCode=""
	AD=""
	with open(PythonLocation()+"/../"+Configuration+"/BuildingConfigration", 'r',encoding=GetEncoding(PythonLocation()+"/../"+Configuration+"/BuildingConfigration")) as json_file:
		addCodeList  = json_file.readlines()
		for j in addCodeList:
			temp = j.replace(" ","")
			if "_path=" in temp:
				start = temp.rfind("=")
				_path = temp[start+1:]
			if "Packagename=" in temp:
				start = temp.rfind("=")
				Packagename = temp[start+1:]
			if "_path=" in temp:
				start = temp.rfind("=")
				_path = temp[start+1:]
			if "VersionName=" in temp:
				start = temp.rfind("=")
				VersionName = temp[start+1:]
			if "VersionCode=" in temp:
				start = temp.rfind("=")
				VersionCode = temp[start+1:]
			if "AD=" in temp:
				start = temp.rfind("=")
				AD = temp[start+1:]
			if "_ios=" in temp:
				start = temp.rfind("=")
				IOS = temp[start+1:]
		param = _path+","+Packagename+","+Channel+","+VersionName+","+VersionCode+","+AD+","+Configuration+","+IOS
		param = param.replace("/n","")
		param = param.replace("\n","")
		param = param.replace("\r","")
	print(GetPythonCommand()+" "+PythonLocation()+"/21_E2WSDKBuild.py "+param)
	os.system(GetPythonCommand()+" "+PythonLocation()+"/21_E2WSDKBuild.py "+param)
if __name__=='__main__':
    main()