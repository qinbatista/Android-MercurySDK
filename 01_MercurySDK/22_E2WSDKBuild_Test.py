import sys, os, platform
import PythonFunction
import sys
def main():
	#param = sys.argv[1]
	#list = param.split(",")
	#print("APK Path	["+list[0]+"]")
	#print("Package Name	["+list[1]+"]")
	#print("Channel Name	["+list[2]+"]")
	#print("Version Name	["+list[3]+"]")
	#print("Version Code	["+list[4]+"]")
	#print("AD	["+list[5]+"]")
	#print("Configuration Folder	["+list[6]+"]")
	#目标APK地址
	#_path = PythonFunction.FuncFunctionList.BuildE2WTestAPK()+"\\bin\\game-release.apk"
	#_path = "C:\\GameCode\\Machinarium\\Machinarium.E2W.UNI.2762-D.apk"
	#_path = r"C:\Users\qinba\Desktop\Samorost3-E2W-east2west.apk"
	#_path = r"C:\GameCode\LetsCreatePottery\lcp.apk"
	_path = "/Users/yupengqin/OneDrive/BaseAPK/Odium/Demo/E2WSDKDEMO.apk"

	#包名
	Packagename =  "com.east2west.IronMarine.yyb"
	#渠道
	Channel = "ios"
	#Channel = "huawei20180410"

	#版本名
	VersionName = "4.6.1"
	#版本号
	VersionCode = "10002222"
	#广告
	AD = "jrttad20181219"
	#配置文件夹
	Configuration = "Configuration_Odium"
	#Configuration = "Configuration_LCP"
	_ios= "/Users/yupengqin/Desktop/jrttiosdk123"
	PythonFunction.FuncFunctionList.BuildChannelAPK(_path,Channel,AD,Packagename,VersionName,VersionCode,Configuration,_ios)
if __name__ == '__main__':
	#PythonFunction.FuncFunctionList.BalanceSmali(r"C:\Users\qinba\Desktop\my")
	main()