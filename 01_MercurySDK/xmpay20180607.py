import sys, os, platform
import PythonFunction
import chardet
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
Configuration ="Configuration_MCM"
Channel ="east2west"
def GetEncoding(_Path):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()
	myencoding = di["encoding"]
	if myencoding==None:
		myencoding ="utf-8"
	return myencoding
def main():
	Channel ="xmpay20180607" 
	if len(sys.argv)==1:
		PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"\\01_E2WSDKPlugin\\east2west\\src\\main\\java\\com\\east2west\\game\\inApp",Channel.lower(), True)
		PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"\\01_E2WSDKPlugin\\east2west\\libs",PythonLocation()+"\\..\\02_ChannelSdk\\ChannelSDK",Channel.lower(), True)
		PythonFunction.FuncFunctionList.CopyNecessaryLibs()
		print("Building Channel: east2west")
		return
	Configuration = sys.argv[1]
	_path=""
	Packagename=""
	VersionName=""
	VersionCode=""
	AD=""
	with open(PythonLocation()+"\\..\\"+Configuration+"\\BuildingConfigration", 'r',encoding=GetEncoding(PythonLocation()+"\\..\\"+Configuration+"\\BuildingConfigration")) as json_file:
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
		param = _path+","+Packagename+","+Channel+","+VersionName+","+VersionCode+","+AD+","+Configuration
		param = param.replace("\n","")
	print("python.exe "+PythonLocation()+"\\21_E2WSDKBuild.py "+param)
	os.system("python.exe "+PythonLocation()+"\\21_E2WSDKBuild.py "+param)
if __name__=='__main__':
    main()