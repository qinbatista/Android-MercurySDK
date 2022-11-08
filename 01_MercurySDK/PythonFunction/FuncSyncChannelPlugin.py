# -*- coding: utf-8 -*-
import os, io, sys, re, time, datetime, base64
import time
import platform
import shutil
import chardet
import json
import codecs
import xml.dom.minidom
import time
E2WSDKCodeLocation=  '/01_E2WSDKPlugin/src/com/east2west/game/inApp'
ChannelCodeLocation='/02_ChannelPlugin/src/com/east2west/game/inApp'
AbsolutelyPath=''
copyFileCounts = 0
AbbreviateName = 0
JsonAPPID = ""
JsonAPPKEY = ""
GlobalFolderName=""
def PrintLocal(msg):
	print("[FuncSyncChannelPlugin]"+msg)
	return msg
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def UsePlatform():
	sysstr = platform.system()
	if(sysstr =="Windows"):
		return "Windows"
	elif(sysstr == "Linux"):
		return "Linux"
	else:
		return "Mac"

def CopyTrackFolder():
	print("Channel's Abbreviated English")
	print("渠道英文名缩写:")
	global AbbreviateName
	global GlobalFolderName
	AbbreviateName = input()
	NameForXML = AbbreviateName.lower()
	AbbreviateName = AbbreviateName.lower()
	GlobalFolderName = FolderName= AbbreviateName + time.strftime('%Y_%m_%d_%H_%M_%S',time.localtime(time.time()))
	print(PythonLocation()+"/../"+"/02_ChannelPlugin")
	if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin"):
		if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/assets"):
			copyFiles(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/assets",PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/assets")
		if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs"):
			myList = ListFolder(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs")
			for i in myList:
				if i.find("classes.jar")!=-1:
					os.rename(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs/classes.jar",PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs/"+AbbreviateName+".jar")
			ListAll = ListFolder(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs")
			for i in ListAll:
				if i.find(".")!=-1:
					NewName = i[:i.find(".jar")]+"_"+NameForXML+".jar"
					os.rename(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs/"+i, PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs/"+NewName)
			copyFiles(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs",PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/libs")
		if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src"):
			copyFiles(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src",PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/src")
		if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/res"):
			copyFiles(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/res",PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/res")
		if os.path.isfile(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/AndroidManifest.xml"):
			shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/AndroidManifest.xml",PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/AndroidManifest.xml")
		if os.path.isfile(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/demo.gradle"):
			shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/demo.gradle",PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/demo.gradle")
		if os.path.isfile(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/build.gradle"):
			shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/build.gradle",PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/build.gradle")
	SetXMLCode(NameForXML, PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/AndroidManifest.xml")
	SetSDK(NameForXML,FolderName,PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/")
	SetGradle(PythonLocation()+"/../02_ChannelPlugin/east2west/build.gradle", PythonLocation()+"/../01_E2WSDKPlugin/east2west/build.gradle")
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
	if os.path.exists(_Path+"/assets"):
		copyFiles(PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/assets",PythonLocation()+"/../../02_ChannelSdk/ChannelSDK/"+name+"/assets")
	if os.path.exists(_Path+"/libs"):
		copyFiles(PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/libs",PythonLocation()+"/../../02_ChannelSdk/ChannelSDK/"+name+"/libs")
	if os.path.exists(_Path+"/res"):
		copyFiles(PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/res",PythonLocation()+"/../../02_ChannelSdk/ChannelSDK/"+name+"/res")
	if os.path.isfile(_Path+"/demo.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/demo.gradle",PythonLocation()+"/../../02_ChannelSdk/ChannelSDK/"+name+"/demo.gradle")
	if os.path.isfile(_Path+"/buildInit.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/TrackChannelCode/"+FolderName+"/buildInit.gradle",PythonLocation()+"/../../02_ChannelSdk/ChannelSDK/"+name+"/buildInit.gradle")
	

def InitChannelPlugin():
	if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs"):
		copyFiles(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/libs")
	#print(PythonLocation()+"/../"+"/02_ChannelPlugin/assets")
	if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/assets"):
		DeleteFolder(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/assets")
		os.mkdir(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/assets")
	if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/res"):
		DeleteFolder(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/res")
		os.mkdir(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/res")
	if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs"):
		DeleteFolder(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs")
		os.mkdir(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/libs")
	if os.path.isfile(PythonLocation()+"/../"+"/02_ChannelPlugin/InAppDefault.java"):
		shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/InAppDefault.java",PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/inApp/InAppDefault.java")
	#print(PythonLocation()+"/../"+"/02_ChannelPlugin/AndroidManifestInit.xml")
	if os.path.isfile(PythonLocation()+"/../"+"/02_ChannelPlugin/AndroidManifestInit.xml"):
		shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/AndroidManifestInit.xml",PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/AndroidManifest.xml")
	if os.path.isfile(PythonLocation()+"/../"+"/02_ChannelPlugin/buildInit.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/buildInit.gradle",PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/build.gradle")
	if os.path.isfile(PythonLocation()+"/../"+"/02_ChannelPlugin/demo.gradle"):
		shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/demo.gradle",PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/demo.gradle")
def SetXMLCode(name,_Path):
	if os.path.isfile(_Path):
		ListSDK = GetChannelXml(_Path,"sdk")
		ListXML = GetChannelXml(_Path,"sdkxml")
	if os.path.isfile(PythonLocation()+"/../../02_ChannelSdk/ChannelXML/"+name+".qinxml")==False:
		file = open(PythonLocation()+"/../../02_ChannelSdk/ChannelXML/"+name+".qinxml",'w')
		file.close()
	file_object_read = open(PythonLocation()+"/../../02_ChannelSdk/ChannelXML/"+name+".qinxml",'w',encoding="utf8")
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
		if sdkorxml=="sdk":
			all_the_text = file_object.readlines()
			for i in all_the_text:
				i.replace(" ","")
				if i.find("<!--sdk-->")!=-1:
					JavaCode.append("<!--sdk-->\n")
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
				if i.find("<!--sdkxml-->")!=-1:
					JavaCode.append("<!--sdkxml-->\n")
					isEnter = True
				elif(isEnter==True and i.find("<!--end-->")==-1):
					JavaCode.append(i+"\n")
				elif(isEnter==True and i.find("<!--end-->")!=-1):
					JavaCode.append("<!--end-->\n")
					break
	finally:
		file_object.close( )
	return JavaCode
def SyncSDKToE2WSDK():
	if IfChannelExist():
		CopyWXAPI()
		print("Updating "+AbbreviateName+" SDK")
		UpdataInAppDefault()
		CopyUtil()
		UpdateJson()
	else:
		CopyWXAPI()
		print("Adding "+AbbreviateName+" SDK")
		CopyUtil()
		UpdataApplication()
		UpdataE2WApp()
		UpdataQinConst()
		UpdataInAppDefault()
		UpdateJson()
	CreateGameSetting()
def CopyWXAPI():
	folder = ReadXml_GetPackageName(PythonLocation()+"/../"+"/TrackChannelCode/"+GlobalFolderName+"/AndroidManifest.xml").replace(".","/")
	if os.path.exists(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/"+folder+"/wxapi")==False:
		os.makedirs(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/"+folder+"/wxapi")
	time.sleep(1)
	if os.path.exists(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/"+folder+"/wxapi")==True:
		javaFilelist = ListFolder(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/"+folder+"/wxapi")
		for i in javaFilelist:
			shutil.copy(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/"+folder+"/wxapi/"+i,sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/"+folder+"/wxapi/"+i)
			os.remove(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/"+folder+"/wxapi/"+i)
def ReadXml_GetPackageName(path):
	dom = xml.dom.minidom.parse(path)
	root = dom.documentElement
	name =root.getAttribute("package")
	return name
def CreateGameSetting():
	if os.path.isfile(PythonLocation()+"/../"+"/../01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(PythonLocation()+"/../"+"/../01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding=GetEncoding(PythonLocation()+"/../"+"/../01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"))
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
			open(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration","w",encoding=GetEncoding(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration"))
		with open(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration", "w",encoding=GetEncoding(PythonLocation()+"/../../02_ChannelSdk/GameConfiguration")) as json_file:
			print(json.dumps(SettingDic,ensure_ascii=False))
			json_file.write(json.dumps(SettingDic,ensure_ascii=False))
def UpdateJson():
	if os.path.isfile(PythonLocation()+"/../../02_ChannelSdk/ChannelTemplate/"+AbbreviateName) == False:
		shutil.copy(PythonLocation()+"/../../02_ChannelSdk/ChannelTemplate/Template",PythonLocation()+"/../../02_ChannelSdk/ChannelTemplate/"+AbbreviateName)
	readed = json.load(open(PythonLocation()+"/../../02_ChannelSdk/ChannelTemplate/Template", 'r',encoding=GetEncoding(PythonLocation()+"/../../02_ChannelSdk/ChannelTemplate/Template")))
	readed["APPID"] =JsonAPPID
	readed["APPKEY"] =JsonAPPKEY
	jsontext = json.dumps(readed,ensure_ascii=False)
	f = codecs.open(PythonLocation()+"/../../02_ChannelSdk/ChannelTemplate/"+AbbreviateName,'w',encoding=GetEncoding(PythonLocation()+"/../../02_ChannelSdk/ChannelTemplate/"+AbbreviateName))
	f.write(jsontext)
	f.close()
	#json.dump(readed, open(PythonLocation()+"/../"+"/../../02_ChannelSdk/ChannelTemplate/"+AbbreviateName, 'w',encoding=GetEncoding(PythonLocation()+"/../"+"/../../02_ChannelSdk/ChannelTemplate/"+AbbreviateName)))
def IfChannelExist():
	MyList = ListFolder(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp")
	print(MyList)
	for i in MyList:	
		if(i.find("InApp"+AbbreviateName.upper())!=-1):
			return True
	return False

def UpdataApplication():
	#print(sys.path[0]+"/01_E2WSDKPlugin/src/com/east2west/game/SdkApplication.java")
	if os.path.isfile(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java"):
		file_object = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java",encoding=GetEncoding(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java"))
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
					JavaCode.append("import com.east2west.game.inApp.InApp"+AbbreviateName.upper()+";\n")
					JavaCode.append("//AddCodeImportPython\n")
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java",'w',encoding=GetEncoding(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/SdkApplication.java"))
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )

def UpdataE2WApp():
	#print(AbbreviateName)
	if os.path.isfile(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java"):
		file_object = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java",encoding=GetEncoding(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java"))
		JavaCode=[]
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("AddCodePython")!=-1):
					JavaCode.append("case QinConst.China"+AbbreviateName+":\n")
					JavaCode.append("mInAppExt = new InApp"+AbbreviateName.upper()+"();\n")
					JavaCode.append("break;\n")
					JavaCode.append("//AddCodePython\n")
				elif(i.find("AddCodeImportPython")!=-1):
					JavaCode.append("import com.east2west.game.inApp.InApp"+AbbreviateName.upper()+";\n")
					JavaCode.append("//AddCodeImportPython\n")
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java",'w',encoding=GetEncoding(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/E2WApp.java"))
		#print(JavaCode)
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )

def UpdataQinConst():
	if os.path.isfile(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding=GetEncoding(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"))
		JavaCode=[]
		CountLine=0
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				CountLine+=1
				if(i.find("AddCodePythonQinConstChina")!=-1):
					JavaCode.append("public static final int China"+AbbreviateName+"="+str(CountLine)+";\n")			
					JavaCode.append("//AddCodePythonQinConstChina\n")
				elif(i.find("AddCodePythonQinConstGetChannel")!=-1):
					JavaCode.append("case \""+AbbreviateName+"\":\n")
					List = UpdataQinConst_GetChannelSetting()
					for i in List:
						#print(i)
						JavaCode.append(i)
						
					JavaCode.append("break;\n")					
					JavaCode.append("//AddCodePythonQinConstGetChannel\n")
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",'w',encoding=GetEncoding(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"))
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )
def GetEncoding(_Path):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()
	myencoding = di["encoding"]
	return myencoding
def UpdataQinConst_GetChannelSetting():
	if os.path.isfile(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"):
		file_object = open(sys.path[0]+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/QinConst.java",encoding=GetEncoding(sys.path[0]+"/\02_ChannelPlugin/east2west/src/main/java/com/east2west/game/QinConst.java"))
		JavaCode=[]
		isEnter=False
		global  JsonAPPID
		global JsonAPPKEY
		try:
			all_the_text = file_object.readlines()
			
			for i in all_the_text:
				if(i.find("//AddCodeChannelSettingPython")!=-1):
					isEnter = True	
				elif(isEnter==True and i.find("//end")==-1):
					print(i)
					if i.find("appid") != -1 and  i.find("String") != -1:
						newI_appid = i.replace("appid",AbbreviateName+"appid")
						#print(newI_appid)
						temp = newI_appid.replace(" ","")
						start  = temp.find("\"")
						end = temp.rfind("\"")
						#print(abs(start-end))
						if temp[start+1:end]!="" :
							JsonAPPID  = temp[start+1:end]
							JavaCode.append(newI_appid+"\n")
					elif i.find("appkey") != -1 and  i.find("String") != -1:
						newI_appkey= i.replace("appkey",AbbreviateName+"appkey")
						#print(newI_appkey)
						temp = newI_appkey.replace(" ","")
						start  = temp.find("\"")
						end = temp.rfind("\"")
						#print(abs(start-end))
						if temp[start+1:end]!="":
							stringfor1 = temp[start+1:end]
							if stringfor1!="":
								JsonAPPKEY += stringfor1
								JsonAPPKEY +=","
								JavaCode.append(newI_appkey+"\n")
					elif i.find("appkey") != -1 and  i.find("String") == -1:
						#newI_appkey= i.replace("appkey",AbbreviateName+"appkey")
						#print(newI_appkey)
						temp = i.replace(" ","")
						start  = temp.find("=")
						if temp[start+1:]!="":
							tem =  temp[:start+1]
							i = temp[start+1:]
							mystring = i.replace("appkey",AbbreviateName+"appkey")
							if mystring!="":
								JavaCode.append(tem+mystring+"\n")
					elif i.find("appid") != -1 and  i.find("String") == -1:
						#newI_appkey= i.replace("appkey",AbbreviateName+"appkey")
						#print(newI_appkey)
						temp = i.replace(" ","")
						start  = temp.find("=")
						if temp[start+1:]!="":
							tem =  temp[:start+1]
							i = temp[start+1:]
							mystring = i.replace("appid",AbbreviateName+"appid")
							if mystring!="":
								JavaCode.append(tem+mystring+"\n")
					else:
						JavaCode.append(i+"\n")
				elif(isEnter==True and i.find("//end")!=-1):
					break
			JsonAPPKEY = JsonAPPKEY[:-1]
			print(JsonAPPID)
			print(JsonAPPKEY)
			#print("_")
		finally:
			file_object.close( )
		return JavaCode

def UpdataInAppDefault():
	MyList = ListFolder(sys.path[0]+"/TrackChannelCode/")
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
	if os.path.isfile(sys.path[0]+"/TrackChannelCode/"+NewestSDK+"/src/main/java/com/east2west/game/inApp/InAppDefault.java"):
		shutil.copy(sys.path[0]+"/TrackChannelCode/"+NewestSDK+"/src/main/java/com/east2west/game/inApp/InAppDefault.java",sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp/InApp"+AbbreviateName.upper()+".java")
	if os.path.isfile(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp/InApp"+AbbreviateName.upper()+".java"):
		file_object = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp/InApp"+AbbreviateName.upper()+".java",encoding="utf8")
		JavaCode=[]
		try:
			all_the_text = file_object.readlines()
			for i in all_the_text:
				if(i.find("InAppDefault")!=-1):
					
					j = i.replace("InAppDefault","InApp"+AbbreviateName.upper())
					#print("replace:"+j)
					JavaCode.append(j)
				else:
					JavaCode.append(i)
		finally:
			file_object.close( )

		file_object_read = open(sys.path[0]+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/inApp/InApp"+AbbreviateName.upper()+".java",'w',encoding="utf8")
		try:
			file_object_read.writelines(JavaCode)
		finally:
			file_object_read.close( )
def CopyUtil():
	if os.path.exists(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/util"):
		copyFiles(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/util",PythonLocation()+"/../"+"/01_E2WSDKPlugin/east2west/src/main/java/com/east2west/game/util")
		DeleteFolder(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/util")
		os.mkdir(PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/util")
		shutil.copy(PythonLocation()+"/../"+"/02_ChannelPlugin/Function.java",PythonLocation()+"/../"+"/02_ChannelPlugin/east2west/src/main/java/com/east2west/game/util/Function.java")
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
	CreateGameSetting()
if __name__ == '__main__':
	
	main()