# -*- coding: utf-8 -*-
import os, io, sys, re, time, datetime, base64
import time
import platform
import shutil
import chardet
import json
E2WSDKCodeLocation=  '/01_E2WSDKPlugin/src/com/east2west/game/Show'
ChannelCodeLocation='/03_ADPlugin/src/com/east2west/game/Show'
AbsolutelyPath=''
copyFileCounts = 0
AbbreviateName = 0
def PrintLocal(msg):
	print("[FuncSyncChannelPlugin]"+msg)
	return msg

def UsePlatform():
	sysstr = platform.system()
	if(sysstr =="Windows"):
		return "Windows"
	elif(sysstr == "Linux"):
		return "Linux"
	else:
		return "Mac"
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def CopyTrackFolder():
	print("AD's Abbreviated English")
	print("广告英文名缩写:")
	global AbbreviateName
	AbbreviateName = input()
	NameForXML = AbbreviateName.lower()
	AbbreviateName = AbbreviateName.lower()
	FolderName= AbbreviateName + time.strftime('%Y_%m_%d_%H_%M_%S',time.localtime(time.time()))
	if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin"):
		if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/assets"):
			copyFiles(PythonLocation()+"/../"+"/03_ADPlugin/east2west/assets",PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/assets")
		if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs"):
			myList = ListFolder(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs")
			for i in myList:
				if i.find("classes.jar")!=-1:
					os.rename(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs/classes.jar",PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs/"+AbbreviateName+".jar")
			ListAll = ListFolder(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs")
			for i in ListAll:
				if i.find(".")!=-1:
					NewName = i[:i.find(".jar")]+"_"+NameForXML+".jar"
					os.rename(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs/"+i, PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs/"+NewName)
			copyFiles(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs",PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/libs")
		if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/src"):
			copyFiles(PythonLocation()+"/../"+"/03_ADPlugin/east2west/src",PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/src")
		if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/res"):
			copyFiles(PythonLocation()+"/../"+"/03_ADPlugin/east2west/res",PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/res")
		if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/east2west/AndroidManifest.xml"):
			shutil.copy(PythonLocation()+"/../"+"/03_ADPlugin/east2west/AndroidManifest.xml",PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/AndroidManifest.xml")
		if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/east2west/demo.gradle"):
			shutil.copy(PythonLocation()+"/../"+"/03_ADPlugin/east2west/demo.gradle",PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/demo.gradle")
		if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/east2west/build.gradle"):
			shutil.copy(PythonLocation()+"/../"+"/03_ADPlugin/east2west/build.gradle",PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/build.gradle")
	SetXMLCode(NameForXML, PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/AndroidManifest.xml")
	SetSDK(NameForXML,FolderName,PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/")
	SetGradle(PythonLocation()+"/../"+"/03_ADPlugin/east2west/build.gradle", PythonLocation()+"/../01_E2WSDKPlugin/east2west/build.gradle")
	print("Finished")
	#print("保存完毕")
def SetGradle(_Resource,_Des):
	if os.path.isfile(_Des):
		file_object = open(_Des,encoding="utf8")
	JavaCode=[]
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			f = i.replace(" ","")
			if(f.find("dependencies")!=-1):
				JavaCode.append(i)
				Mylist = FindKeyFromGradle(_Resource)
				for ii in Mylist:
					JavaCode.append(ii)
			else:
				JavaCode.append(i)
	finally:
		file_object.close( )

	file_object_read = open(_Des,'w',encoding="utf8")
	try:
		file_object_read.writelines(JavaCode)
	finally:
		file_object_read.close()
def FindKeyFromGradle(_Resource):
	if os.path.isfile(_Resource):
		file_object = open(_Resource,encoding="utf8")
	JavaCode=[]
	isFind = False
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			f = i.replace(" ","")
			if(f.find("dependencies")!=-1 and isFind==False):
				isFind=True
			elif(f.find("compile")!=-1 and isFind==True):
				if(f.find("}")!=-1):break
				JavaCode.append(i)
	finally:
		file_object.close( )
	return JavaCode
def SetSDK(name,FolderName,_Path):
	if os.path.exists(PythonLocation()+"/../../02_ChannelSdk/ADSDK/"+name)==False:
		os.mkdir(PythonLocation()+"/../../02_ChannelSdk/ADSDK/"+name)
	if os.path.exists(_Path+"/assets"):
		copyFiles(PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/assets",PythonLocation()+"/../../02_ChannelSdk/ADSDK/"+name+"/assets")
	if os.path.exists(_Path+"/libs"):
		copyFiles(PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/libs",PythonLocation()+"/../../02_ChannelSdk/ADSDK/"+name+"/libs")
	if os.path.exists(_Path+"/res"):
		copyFiles(PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/res",PythonLocation()+"/../../02_ChannelSdk/ADSDK/"+name+"/res")
	if os.path.isfile(_Path+"/demo.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/demo.gradle",PythonLocation()+"/../../02_ChannelSdk/ADSDK/"+name+"/demo.gradle")
	if os.path.isfile(_Path+"/build.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/TrackADCode/"+FolderName+"/build.gradle",PythonLocation()+"/../../02_ChannelSdk/ADSDK/"+name+"/build.gradle")
def SetXMLCode(name,_Path):
	if os.path.isfile(_Path):
		ListSDK = GetChannelXml(_Path,"ad")
		ListXML = GetChannelXml(_Path,"adxml")
	if os.path.isfile(PythonLocation()+"/../../02_ChannelSdk/ADXML/"+name+".qinxml")==False:
		open(PythonLocation()+"/../../02_ChannelSdk/ADXML/"+name+".qinxml",'a',encoding="utf8")
	file_object_read = open(PythonLocation()+"/../../02_ChannelSdk/ADXML/"+name+".qinxml",'w',encoding="utf8")
	try:
		for i in ListSDK:
			#print(i)
			file_object_read.writelines(i)
			#input()
		for i in ListXML:
			#print(i)
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
		if sdkorxml=="ad":
			all_the_text = file_object.readlines()
			for i in all_the_text:
				i.replace(" ","")
				if i.find("<!--ad-->")!=-1:
					JavaCode.append("<!--ad-->\n")
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
				if i.find("<!--adxml-->")!=-1:
					JavaCode.append("<!--adxml-->\n")
					isEnter = True
				elif(isEnter==True and i.find("<!--end-->")==-1):
					JavaCode.append(i+"\n")
				elif(isEnter==True and i.find("<!--end-->")!=-1):
					JavaCode.append("<!--end-->\n")
					break
	finally:
		file_object.close( )
	return JavaCode

def InitChannelPlugin():
	if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs"):
		copyFiles(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/libs")
	if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/assets"):
		DeleteFolder(PythonLocation()+"/../"+"/03_ADPlugin/east2west/assets")
		os.mkdir(PythonLocation()+"/../"+"/03_ADPlugin/east2west/assets")
	if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/res"):
		DeleteFolder(PythonLocation()+"/../"+"/03_ADPlugin/east2west/res")
		os.mkdir(PythonLocation()+"/../"+"/03_ADPlugin/east2west/res")
	if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs"):
		DeleteFolder(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs")
		os.mkdir(PythonLocation()+"/../"+"/03_ADPlugin/east2west/libs")
	if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/InAppShowADDefault.java"):
		shutil.copy(PythonLocation()+"/../"+"/03_ADPlugin/InAppShowADDefault.java",PythonLocation()+"/../"+"/03_ADPlugin/east2west/src/main/java/com/east2west/game/Show/InAppShowADDefault.java")
	if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/AndroidManifestInit.xml"):
		shutil.copy(PythonLocation()+"/../"+"/03_ADPlugin/AndroidManifestInit.xml",PythonLocation()+"/../"+"/03_ADPlugin/east2west/AndroidManifest.xml")
	if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/buildInit.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/03_ADPlugin/buildInit.gradle",PythonLocation()+"/../"+"/03_ADPlugin/east2west/build.gradle")
	if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/demo.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/03_ADPlugin/demo.gradle",PythonLocation()+"/../"+"/03_ADPlugin/east2west/demo.gradle")
	
def SyncSDKToE2WSDK():
	if IfChannelExist():
		print("Updating "+AbbreviateName+" SDK")
		UpdataInAppDefault()
		CopyUtil()
	else:
		print("Adding "+AbbreviateName+" SDK")
		CopyUtil()
		#UpdataApplication()
		UpdataE2WApp()
		UpdataQinConst()
		UpdataInAppDefault()
	CreateGameSetting()
def GetEncoding(_Path):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()
	myencoding = di["encoding"]
	return myencoding
def CreateGameSetting():
	if os.path.isfile(PythonLocation()+"/../01_E2WSDKPlugin/east2west/main/java/src/com/east2west/game/QinConst.java"):
		file_object = open(PythonLocation()+"/../01_E2WSDKPlugin/east2west/main/java/src/com/east2west/game/QinConst.java",encoding=GetEncoding(PythonLocation()+"/../01_E2WSDKPlugin/east2west/main/java/src/com/east2west/game/QinConst.java"))
		isEnter=False

		SettingDic = {}
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				checkI = i.replace(" ","")
				if(i.find("//PythonConfiguration")!=-1):
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
def IfChannelExist():
	MyList = ListFolder(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show")
	print(MyList)
	for i in MyList:	
		if(i.find("Show"+AbbreviateName.upper())!=-1):
			return True
	return False

def UpdataApplication():
	#print(PythonLocation()+"/../"+"/01_E2WSDKPlugin/src/com/east2west/game/SdkApplication.java")
	if os.path.isfile(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java"):
		file_object = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java",encoding="utf8")
		JavaCode=[]
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("AddCodePython")!=-1):
					JavaCode.append("else if(sdkName.equals(\""+AbbreviateName+"\"))\n")
					JavaCode.append("{\n")
					JavaCode.append("mExtSDKId = QinConst.China"+AbbreviateName+";\n")
					JavaCode.append("Log.e(QinConst.TAG, \"[E2WApp] "+AbbreviateName+"=ApplicationInit\");\n")
					JavaCode.append("mInAppExt = new InApp"+AbbreviateName.upper()+"();\n")
					JavaCode.append("mInAppExt.ApplicationInit(Acontext);\n")
					JavaCode.append("}\n")
					JavaCode.append("//AddCodePython\n")
				elif(i.find("AddCodeImportPython")!=-1):
					JavaCode.append("import com.east2west.game.Show.InApp"+AbbreviateName.upper()+";\n")
					JavaCode.append("//AddCodeImportPython\n")
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java",'w',encoding="utf8")
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )
	
def UpdataE2WApp():
	#print(AbbreviateName)
	if os.path.isfile(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java"):
		file_object = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java",encoding="utf8")
		JavaCode=[]
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("PythonAdCode")!=-1):
					JavaCode.append("case \""+AbbreviateName.lower()+"\": mInAppShow = new InAppShow"+AbbreviateName.upper()+"();break;\n")
					JavaCode.append("//PythonAdCode\n")
				elif(i.find("AddCodeImportPython")!=-1):
					JavaCode.append("import com.east2west.game.Show.InAppShow"+AbbreviateName.upper()+";\n")
					JavaCode.append("//AddCodeImportPython\n")
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java",'w',encoding="utf8")
		#print(JavaCode)
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )

def UpdataQinConst():
	if os.path.isfile(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding="utf8")
		JavaCode=[]
		CountLine=0
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				CountLine+=1
				if(i.find("AddADIDPython")!=-1):										
					List = UpdataQinConst_GetChannelSetting()
					for i in List:
						#print(i)
						JavaCode.append(i)					
					JavaCode.append("//AddADIDPython\n")
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",'w',encoding="utf8")
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )
def UpdataQinConst_GetChannelSetting():
	#print(PythonLocation()+"/../"+"/02_ChannelPlugin/src/com/east2west/game/QinConst.java")
	if os.path.isfile(PythonLocation()+"/../"+"/03_ADPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(PythonLocation()+"/../"+"/03_ADPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding="utf8")
		JavaCode=[]
		isEnter=False
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("//AddADIDPython")!=-1):
					isEnter = True
				elif(isEnter==True and i.find("//end")==-1):
					JavaCode.append(i+"\n")
				elif(isEnter==True and i.find("//end")!=-1):
					break
		finally:
			file_object.close( )
		return JavaCode

def UpdataInAppDefault():
	MyList = ListFolder(PythonLocation()+"/../"+"/TrackADCode/")
	ChannelSDKList=[]
	for i in MyList:
		if(i.find(AbbreviateName)!=-1):
			ChannelSDKList.append(i)
	if(len(ChannelSDKList)==0):
		print("Can't find newest Codes")
		print("找不到最新代码")
		return None
	ChannelSDKList.sort(reverse = True)
	NewestSDK=ChannelSDKList[0]
	
	if os.path.isfile(PythonLocation()+"/../"+"/TrackADCode/"+NewestSDK+"/src/main/java/com/east2west/game/Show/InAppShowADDefault.java"):
		shutil.copy(PythonLocation()+"/../"+"/TrackADCode/"+NewestSDK+"/src/main/java/com/east2west/game/Show/InAppShowADDefault.java",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show/InAppShow"+AbbreviateName.upper()+".java")
	
	if os.path.isfile(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show/InAppShow"+AbbreviateName.upper()+".java"):
		file_object = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show/InAppShow"+AbbreviateName.upper()+".java",encoding="utf8")
		JavaCode=[]
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("InAppShowADDefault")!=-1):
					
					j = i.replace("InAppShowADDefault","InAppShow"+AbbreviateName.upper())
					#print("replace:"+j)
					JavaCode.append(j)
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/Show/InAppShow"+AbbreviateName.upper()+".java",'w')
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )
def CopyUtil():
	if os.path.exists(PythonLocation()+"/../"+"/03_ADPlugin/east2west/src/main/java/com/east2west/game/util"):
		copyFiles(PythonLocation()+"/../"+"/03_ADPlugin/east2west/src/main/java/com/east2west/game/util",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/util")



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
                pass
                #print (u"%s %s 已存在，不重复复制" %(time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time())), targetF))
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