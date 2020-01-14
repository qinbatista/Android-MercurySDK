# -*- coding: utf-8 -*-
import sys, os, platform
import os
import time
import shutil
import chardet
import sys,os
import xml.dom.minidom
import zipfile
#import FuncFunctionList
sys.path.append(os.path.dirname(os.path.realpath(__file__)))

CallMethodPath=""
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def UsePlatform(arg):
	def UsePlatformfunc(FunctionName):
		def UsePlatformfunc_in(*args,**kwargs):
			sysstr = platform.system()
			if(sysstr =="Windows"):
				if arg=="Windows":
					return FunctionName(*args,**kwargs)
				else:
					print("This is not your requied Platform")
					return False
			elif(sysstr == "Linux"):
				if arg=="Linux":
					return FunctionName(*args,**kwargs)
				else:
					print("This is not your requied Platform")
					return False
			else:
				print("This is not your requied Platform")
				return False
			return FunctionName(*args,**kwargs)
		return UsePlatformfunc_in
	return UsePlatformfunc
def RegistDragPromission(arg):
	def RegistDragPromissionfunc(FunctionName):
		def RegistDragPromissionfunc_in(*args,**kwargs):
			if "DragPromission" == arg:
				#print("Enter:"+PythonLocation())
				#print(CallMethodPath)
				if(os.path.isfile(PythonLocation()+"\\PythonRegedit.reg")==False):
					print("Can't find "+PythonLocation()+"\\PythonRegedit.reg")
					return False
				if os.path.isfile(PythonLocation()+"\\__pycache__\\PythonRegedit.reg") == False:
					os.system(PythonLocation()+"\\"+"PythonRegedit.reg")
					shutil.copy(PythonLocation()+"\\PythonRegedit.reg",PythonLocation()+"\\__pycache__\\PythonRegedit.reg")
					os.chdir(CallMethodPath)
					return FunctionName(*args,**kwargs)
				else:
					os.chdir(CallMethodPath)
					return FunctionName(*args,**kwargs)
			else:
				return False
		return RegistDragPromissionfunc_in
	return RegistDragPromissionfunc
def CallMethodLocation(arg):
	def CallMethodLocationfunc(FunctionName):
		def CallMethodLocationfunc_in(*args,**kwargs):
			global CallMethodPath
			CallMethodPath = os.path.abspath('.')
			ret = FunctionName(*args,**kwargs)
			return ret
		return CallMethodLocationfunc_in
	return CallMethodLocationfunc

@CallMethodLocation("")
@UsePlatform("Windows")
def BuildChannelAPK(_APKLocation,_ChannelName,_AD):
	#FuncFunctionList.BuildChannelAPK(_APKLocation,_ChannelName,_AD)
	pass
def main():
	#BuildChannelAPK("C:\\Users\\qinba\\Desktop\\abc.apk","xm","")
	#pass
	pass
if __name__ == '__main__':
	main()