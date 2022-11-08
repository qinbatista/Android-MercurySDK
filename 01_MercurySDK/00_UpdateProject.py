import sys, os, platform
import PythonFunction
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp","AppBaseInterface", False)
	PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"/01_E2WSDKPlugin/east2west/libs",PythonLocation()+"/../02_ChannelSdk/ChannelSDK","", False)
	
	PythonFunction.FuncFunctionList.CommentCode(PythonLocation()+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show","AppBaseInterface", False)
	PythonFunction.FuncFunctionList.MoveJarTemporary(PythonLocation()+"/01_E2WSDKPlugin/east2west/libs",PythonLocation()+"/../02_ChannelSdk/ADSDK","", False)
	
	PythonFunction.FuncFunctionList.CopyNecessaryLibs()
	print("Building Channel: east2west")
	PythonFunction.FuncFunctionList.UpdateProject()
if __name__ == '__main__':
    main()