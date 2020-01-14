# -*- coding: utf-8 -*-
import os, io, sys, re, time, datetime, base64
import time
import platform
import shutil
import json
import chardet
E2WSDKCodeLocation=  '/01_E2WSDKPlugin/src/com/east2west/game/inApp'
ChannelCodeLocation='/02_ChannelPlugin/src/com/east2west/game/inApp'
AbsolutelyPath=''
copyFileCounts = 0
AbbreviateName = 0

def UsePlatform():
	sysstr = platform.system()
	if(sysstr =="Windows"):
		return "Windows"
	elif(sysstr == "Linux"):
		return "Linux"
	else:
		return "Mac"
	
def SyncSystemSDKToE2WSDK():
	#copy system code
	CopySystem()
	#copy util code
	CopyUtil()
	#sync qinconst
	UpdataQinConst()
	#copy resource
	CopyResource()
	#copy track folder
	CopyTrackFolder()
	#copy to sdk folder
	CreateGameSetting()
def GetEncoding(_Path):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()
	myencoding = di["encoding"]
	return myencoding
def CreateGameSetting():
	if os.path.isfile(PythonLocation()+"/../01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(PythonLocation()+"/../01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding=GetEncoding(PythonLocation()+"/../01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"))
		isEnter=False

		SettingDic = {}
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				checkI = i.replace(" ","")
				if(i.find("//FunctionPython")!=-1):
					isEnter = True	
				elif(isEnter==True and i.find("//end")==-1):
					#print(i)
					if checkI.find("staticString") != -1 and  checkI.find("=") != -1:
						#newI_appid = i.replace("appid",AbbreviateName+"appid")
						#print(newI_appid)
						#temp = newI_appid.replace(" ","")
						start  = checkI.rfind("staticString")
						end = checkI.rfind("=")
						startvalue  = checkI.find("=\"")
						endvalue = checkI.rfind("\";")
						#print(abs(start-end))
						if checkI[start+1:end]!="" :
							data = {}
							data[checkI[start+len("staticString"):end]] = checkI[startvalue+len("=\""):endvalue]
							SettingDic.update(data)
				elif(isEnter==True and i.find("//end")!=-1):
					break
		finally:
			file_object.close( )
		print(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration")
		if os.path.isfile(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration") ==False:
			open(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration","w","utf-8")
		with open(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration", 'w',encoding=GetEncoding(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration")) as json_file:
			#print(json.dumps(SettingDic))
			json_file.write(json.dumps(SettingDic,ensure_ascii=False))
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def CopySDKFolder(FolderName,_Path):
	name = "system"
	name = name.lower()
	if os.path.exists(_Path+"/assets"):
		copyFiles(PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/assets",PythonLocation()+"/../../02_ChannelSdk/SystemSDK/"+name+"/assets")
	if os.path.exists(_Path+"/libs"):
		copyFiles(PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/libs",PythonLocation()+"/../../02_ChannelSdk/SystemSDK/"+name+"/libs")
	if os.path.exists(_Path+"/res"):
		copyFiles(PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/res",PythonLocation()+"/../../02_ChannelSdk/SystemSDK/"+name+"/res")

def CopyTrackFolder():
	NameForXML = "sYstem"
	NameForXML = NameForXML.lower()
	FolderName= "system" + time.strftime('%Y_%m_%d_%H_%M_%S',time.localtime(time.time()))
	if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin"):
		if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/assets"):
			copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/assets",PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/assets")
		if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs"):
			myList = ListFolder(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs")
			for i in myList:
				if i.find("classes.jar")!=-1:
					os.rename(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs/classes.jar",PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs/"+AbbreviateName+".jar")
		if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs"):
			copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs",PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/libs")
		if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src"):
			copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src",PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/src")
		if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/res"):
			copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/res",PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/res")
		if os.path.isfile(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/AndroidManifest.xml"):
			shutil.copy(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/AndroidManifest.xml",PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/AndroidManifest.xml")
		if os.path.isfile(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/demo.gradle"):
			shutil.copy(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/demo.gradle",PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/demo.gradle")
	CopySDKFolder(FolderName,PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName)
	SetXMLCode(NameForXML, PythonLocation()+"/../"+"/TrackSystemCode/"+FolderName+"/AndroidManifest.xml")
	print("Finished")
	#print("保存完毕")
def SetXMLCode(name,_Path):
	if os.path.isfile(_Path):
		ListSDK = GetChannelXml(_Path,"system")
		ListXML = GetChannelXml(_Path,"systemxml")
	if os.path.isfile(PythonLocation()+"/../../02_ChannelSdk/systemXML/"+name+".qinxml")==False:
		open(PythonLocation()+"/../../02_ChannelSdk/systemXML/"+name+".qinxml",'a',encoding="utf8")
	file_object_read = open(PythonLocation()+"/../../02_ChannelSdk/systemXML/"+name+".qinxml",'w',encoding="utf8")
	try:
		for i in ListSDK:
			print(i)
			file_object_read.writelines(i)
			#input()
		for i in ListXML:
			print(i)
			file_object_read.writelines(i)
			#input()
	finally:
		file_object_read.close( )
	
def GetChannelXml(_Path,sdkorxml):
	if os.path.isfile(_Path):
		file_object = open(_Path,encoding="utf8")
	JavaCode=[]
	isEnter = False
	#print(sdkorxml)
	#input()
	try:
		if sdkorxml=="system":
			all_the_text = file_object.readlines()
			for i in all_the_text:
				i.replace(" ","")
				if i.find("<!--system-->")!=-1:
					JavaCode.append("<!--system-->\n")
					isEnter = True
				elif(isEnter==True and i.find("<!--end-->")==-1):
					JavaCode.append(i+"\n")
				elif(isEnter==True and i.find("<!--end-->")!=-1):
					JavaCode.append("<!--end-->\n")
					break
		else:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				i.replace(" ","")
				if i.find("<!--systemxml-->")!=-1:
					JavaCode.append("<!--systemxml-->\n")
					isEnter = True
				elif(isEnter==True and i.find("<!--end-->")==-1):
					JavaCode.append(i+"\n")
				elif(isEnter==True and i.find("<!--end-->")!=-1):
					JavaCode.append("<!--end-->\n")
					break
	finally:
		file_object.close( )
	return JavaCode
def CopySystem():
	if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src/main/java/com/east2west/game/System"):
		copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src/main/java/com/east2west/game/System",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/System")

def CopyUtil():
	if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src/main/java/com/east2west/game/util"):
		copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src/main/java/com/east2west/game/util",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/util")

def UpdataQinConst():
	if os.path.isfile(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding="utf8")
		JavaCode=[]
		StartCopy=False
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("//FunctionPython")!=-1 and StartCopy==False):
					JavaCode.append("//FunctionPython\n")
					List = UpdataQinConst_GetSysteamSetting()
					for my in List:
						if my.find("String")!=-1:
							newstring = my[:my.find("=")]+"=\"\";\n"
							JavaCode.append(newstring)
					StartCopy=True
					print("True")
				elif(StartCopy==True):
					if(i.find("//end")!=-1):
						print("False")
						StartCopy = False
						JavaCode.append("//end\n")
					if(i.find("//end")==-1):
						print("continue")
						continue
				elif(StartCopy==False):
					#print(i)
					JavaCode.append(i)

		finally:
			file_object.close( )

		file_object_read = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",'w',encoding="utf8")
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )
def UpdataQinConst_GetSysteamSetting():
	#print(PythonLocation()+"/../"+"/02_ChannelPlugin/src/com/east2west/game/QinConst.java")
	if os.path.isfile(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding="utf8")
		JavaCode=[]
		isEnter=False
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("//FunctionPython")!=-1):
					isEnter = True
				elif(isEnter==True and i.find("//end")==-1):
					JavaCode.append(i+"\n")
				elif(isEnter==True and i.find("//end")!=-1):
					break
		finally:
			file_object.close( )
		return JavaCode

def CopyResource():
	if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs"):
		copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/libs",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/libs")
	if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/assets"):
		copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/assets",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/assets")
	if os.path.exists(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/res"):
		copyFiles(PythonLocation()+"/../"+"/04_SystemPlugin/east2west/res",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/res")

def	ListFolder(path):
	List = []
	for i in os.listdir(path):
		List.append(i)
	return List
	
def DeleteFolder(src):
    '''delete files and folders'''
    if os.path.isfile(src):
        try:
            os.remove(src)
        except:
            pass
    elif os.path.isdir(src):
        for item in os.listdir(src):
            itemsrc=os.path.join(src,item)
            DeleteFolder(itemsrc) 
        try:
            os.rmdir(src)
        except:
            pass

def copyFiles(sourceDir, targetDir):
    global copyFileCounts
    #print (sourceDir)
    #print (u"%s 当前处理文件夹%s已处理%s 个文件" %(time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time())), sourceDir,copyFileCounts))
    for f in os.listdir(sourceDir):
        sourceF = os.path.join(sourceDir, f)
        targetF = os.path.join(targetDir, f)
        if os.path.isfile(sourceF):
            #创建目录
            if not os.path.exists(targetDir):
                os.makedirs(targetDir)
            copyFileCounts += 1
            #文件不存在，或者存在但是大小不同，覆盖
            if not os.path.exists(targetF) or (os.path.exists(targetF) and (os.path.getsize(targetF) != os.path.getsize(sourceF))):
                #2进制文件
                open(targetF, "wb").write(open(sourceF, "rb").read())
                #print (u"%s %s 复制完毕" %(time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time())), targetF))
            else:
                #print (u"%s %s 已存在，不重复复制" %(time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time())), targetF))
                pass
        if os.path.isdir(sourceF):
            copyFiles(sourceF, targetF)

def main():
	#global AbbreviateName
	#AbbreviateName = input()
	#UpdataQinConst()
	#SyncSDKToE2WSDK()
	#UpdataInAppDefault()
	#UpdataQinConst_GetChannelSetting()
	#input()
	pass
if __name__ == '__main__':
    main()