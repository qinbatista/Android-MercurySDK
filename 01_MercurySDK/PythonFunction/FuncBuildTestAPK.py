# -*- coding: utf-8 -*-
import sys, os, platform
import os
import time
import shutil
import xml.dom.minidom
import chardet
import datetime
sys.path.append(os.path.dirname(os.path.realpath(__file__)))
import FuncXMLOperationClass
copyFileCounts = 0
PythonVersion = ""
def UsePlatform():
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


def BuildJar(FolderPlugin, FolderDemo):
	os.chdir(PythonLocation()+"/../"+FolderPlugin)
	os.system(GetPythonCommand()+" BuildJAR.py")
	if os.path.exists(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"):
		DeleteFolder(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy")
	copyFiles(PythonLocation()+"/../DemoProject/"+FolderDemo,PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy")
	if os.path.isfile(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/libs/UnityPlugin.jar"):
		os.remove(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/libs/UnityPlugin.jar")		
	os.rename(PythonLocation()+"/../"+FolderPlugin+"/UnityPlugin.jar",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/libs/UnityPlugin.jar")
	shutil.copy(PythonLocation()+"/../"+FolderPlugin+"/east2west/AndroidManifest.xml",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/AndroidManifest.xml")
	
	packageName = ReadXml_GetPackageName(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/AndroidManifest.xml")
	ChangePackageNameGradle(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/build.gradle",packageName)
	copyFiles(PythonLocation()+"/../"+FolderPlugin+"/east2west/libs",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/jniLibs")
	copyFiles(PythonLocation()+"/../"+FolderPlugin+"/east2west/libs",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/libs")
	DeleteContainKeyword(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/jniLibs",".jar")
	KeepContainKeyword(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/libs",".jar")
	AddJARtoGradle(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/build.gradle",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/libs")
	copyFiles(PythonLocation()+"/../"+FolderPlugin+"/east2west/assets",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/assets")
	if os.path.exists(PythonLocation()+"/../"+FolderPlugin+"/east2west/res")==False:
		os.mkdir(PythonLocation()+"/../"+FolderPlugin+"/east2west/res")
	if os.path.exists(PythonLocation()+"/../"+FolderPlugin+"/east2west/res"):
		ListSDKRes = FindAll(PythonLocation()+"/../"+FolderPlugin+"/east2west/res")
		ListGameRes = FindAll(PythonLocation()+"/../"+FolderPlugin+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/res")
	for sdkres in ListSDKRes:
		for gameres in ListGameRes:
			sdkresfile = sdkres[sdkres.rfind("/")-4:]
			gameresfile = gameres[gameres.rfind("/")-4:]
			if(sdkresfile ==gameresfile and ".xml" in sdkresfile):
				CombineRES(sdkres,gameres)
				FuncXMLOperationClass.DeleteMultiElement(gameres)
	CopyFilesDontOverWrite(PythonLocation()+"/../"+FolderPlugin+"/east2west/res",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/res")
	ChangeDemoPackageName(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/java/com/east2west/testapp/MainActivity.java",ReadXml_GetPackageName(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/src/main/AndroidManifest.xml"))
	CopyGradleSetting(PythonLocation()+"/../"+FolderPlugin+"/east2west/demo.gradle",PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy"+"/app/build.gradle" )

def ChangePackageNameGradle(_pathGame,_packageName):
	if os.path.isfile(_pathGame):
		file_object = open(_pathGame,encoding="utf8")
	FoundKeyWord = False
	JavaCode=[]
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			f = i.replace(" ","")
			if(f.find("applicationId")!=-1 and FoundKeyWord ==False):
				if UsePlatform()=="Windows":
					JavaCode.append("        applicationId \""+_packageName+"\"\n")
				if UsePlatform()=="Mac":
					JavaCode.append("        applicationId \""+_packageName+"\"\r")
				FoundKeyWord = True
			else:
				JavaCode.append(i)
	finally:
		file_object.close()
	file_object_read = open(_pathGame,'w',encoding="utf8")
	try:
		file_object_read.writelines(JavaCode)
	finally:
		file_object_read.close()
def DeleteContainKeyword(_path,_key):
	if os.path.exists(_path)==False:
		os.mkdir(_path)
	mylist = ListFolder(_path)
	for myfile in mylist:
		if myfile.find(_key)!=-1:
			os.remove(_path+"/"+myfile)
def KeepContainKeyword(_path,_key):
	mylist = ListFolder(_path)
	for myfile in mylist:
		if myfile.find(_key)==-1 and myfile.find(".")==-1:
			DeleteFolder(_path+"/"+myfile)
def CopyGradleSetting(_pathSource,_pathGame):
	if os.path.isfile(_pathGame):
		file_object = open(_pathGame,encoding="utf8")
	FoundKeyWord = False
	JavaCode=[]
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			f = i.replace(" ","")
			if(f.find("dependencies")!=-1 and FoundKeyWord ==False):
				JavaCode.append(i)
				JavaCode.append(FindKeywordFromGradle(_pathSource))
				FoundKeyWord = True
			else:
				JavaCode.append(i)
	finally:
		file_object.close()
	file_object_read = open(_pathGame,'w',encoding="utf8")
	try:
		file_object_read.writelines(JavaCode)
	finally:
		file_object_read.close()
def AddJARtoGradle(_gradlePath,_libsPath):
	mylist = ListFolder(_libsPath)
	if os.path.isfile(_gradlePath):
		file_object = open(_gradlePath,encoding="utf8")
	JavaCode=[]
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			f = i.replace(" ","")
			if(f.find("dependencies")!=-1):
				JavaCode.append(i)
				for i in mylist:
					if UsePlatform()=="Windows":
						JavaCode.append("implementation files('src/main/libs/"+i+"')\n")
					if UsePlatform()=="Mac":
						JavaCode.append("implementation files('src/main/libs/"+i+"')\r")
			else:
				JavaCode.append(i)
	finally:
		file_object.close( )

	file_object_read = open(_gradlePath,'w',encoding="utf8")
	try:
		file_object_read.writelines(JavaCode)
	finally:
		file_object_read.close()
def FindKeywordFromGradle(_pathSource):
	if os.path.isfile(_pathSource):
		file_object = open(_pathSource,encoding="utf8")
	JavaCode=[]
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			f = i.replace(" ","")
			if(f.find("dependencies")==-1 and f.find("{")==-1 and f.find("}")==-1 and f.find("apply")==-1):
				JavaCode.append(i)
	finally:
		file_object.close()
	ReturnString=""
	for mystring in JavaCode:
		ReturnString=ReturnString+mystring
	return ReturnString 
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def GetEncoding(_Path):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()
	myencoding = di["encoding"]
	if myencoding==None:
		myencoding ="utf-8"
	return myencoding
def CombineRES(sdkres,gameres):
	FuncXMLOperationClass.MergeXML(gameres,sdkres)


def FindAll(_path):
	ListMyFolder = []
	for dirpath, dirnames, filenames in os.walk(_path):
		#print ('Directory', dirpath)
		for filename in filenames:
			#print (' File', filename)
			ListMyFolder.append(dirpath+"/"+filename)
	return ListMyFolder
def CopyFilesDontOverWrite(sourceDir, targetDir):
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
            if not os.path.exists(targetF):
                #2进制文件
                open(targetF, "wb").write(open(sourceF, "rb").read())
                #print (u"%s %s 复制完毕" %(time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time())), targetF))
            else:
                pass
                #print (u"%s %s 已存在，不重复复制" %(time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time())), targetF))
        if os.path.isdir(sourceF):
            CopyFilesDontOverWrite(sourceF, targetF)
def	ListFolder(path):
	List = []
	for i in os.listdir(path):
		List.append(i)
	return List
	
def ChangeDemoPackageName(_Path,_PackageName):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()

	if di["encoding"]=="UTF-8-SIG":
		file_object = open(_Path,'r',encoding="UTF-8-SIG")
		print(di["encoding"])
	if di["encoding"]=="GB2312":
		file_object = open(_Path,'r',encoding="GB2312")
		print(di["encoding"])
	if di["encoding"]=="utf-8":
		file_object = open(_Path,'r',encoding="utf-8")
		print(di["encoding"])
	JavaCode=[]
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			if(i.find(".R")!=-1 and i.find("import")!=-1):
				if UsePlatform() == "Windows":
					JavaCode.append("import "+_PackageName+".R;\n")
				if UsePlatform() == "Mac":
					JavaCode.append("import "+_PackageName+".R;\r")
			else:
				JavaCode.append(i)
	finally:
		file_object.close( )


	if di["encoding"]=="UTF-8-SIG":
		file_object_read = open(_Path,'w',encoding="UTF-8-SIG")
		print(di["encoding"])
	if di["encoding"]=="GB2312":
		file_object_read = open(_Path,'w',encoding="GB2312")
		print(di["encoding"])
	if di["encoding"]=="utf-8":
		file_object_read = open(_Path,'w',encoding="utf-8")
		print(di["encoding"])
	try:
		file_object_read.writelines(JavaCode)
	finally:
		file_object_read.close( )

def ReadXml_GetPackageName(path):
	dom = xml.dom.minidom.parse(path)
	root = dom.documentElement
	name =root.getAttribute("package")
	return name
def GetActivity(_APKLocation):
	dom = xml.dom.minidom.parse(_APKLocation)
	root = dom.documentElement
	#name =root.getAttribute("package")
	name  = root.getElementsByTagName("activity")
	global FoundKey
	nameofvalue=""
	FoundKey=False
	for node in name:
		nameofvalue = node.getAttribute("android:name")
		break
	return nameofvalue
def GetPackageName(_APKLocation):
	_Path = _APKLocation
	#print("--------------"+_Path)
	dom = xml.dom.minidom.parse(_Path)
	root = dom.documentElement
	stringForTem = root.getAttribute("package")
	return stringForTem
def GetGradlePackageName(_Location):
	if os.path.isfile(_Location):
		file_object = open(_Location,encoding="utf8")
	JavaCode=[]
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			f = i.replace(" ","")
			if(f.find("applicationId")!=-1):
				start = f.find('"')
				end = f.rfind('"')
				packageName  = f[start+1:end]
	finally:
		file_object.close()
	return packageName
def BuildAPK(FolderPlugin,FolderDemo):
	os.chdir(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy")
	os.system(GetPythonCommand()+" BuildAPK.py")
	if(os.path.isfile(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy/app-release.apk")==False):
		print("din't find apk")
		return
	if os.path.isfile(PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy/app-release.apk"):
		count = 1
		while True:
			if os.path.isfile(get_desktop()+"/GameAPK/"+FolderDemo+str(count)+".apk"):
				count=count+1
				continue
			break
		if os.path.exists(get_desktop()+"/GameAPK")==False:
			os.makedirs(get_desktop()+"/GameAPK")
		shutil.copy(PythonLocation()+"/..//DemoProject/"+FolderDemo+"Copy/app-release.apk",get_desktop()+"/GameAPK/"+FolderDemo+str(count)+".apk")
		os.system("adb install -r "+PythonLocation()+"/../DemoProject/"+FolderDemo+"Copy/app-release.apk")
		#print("adb shell am start -n "+GetPackageName("AndroidManifest.xml")+"/"+GetActivity("AndroidManifest.xml"))
		os.system("adb shell am start -n "+GetGradlePackageName("./app/build.gradle")+"/"+GetActivity("./app/src/main/AndroidManifest.xml"))
def get_desktop():
	return os.path.join(os.path.expanduser("~"), 'Desktop')

def copyFiles(sourceDir, targetDir):
    if os.path.exists(sourceDir)==False:
        os.mkdir(sourceDir)
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
def BuildTestAPK(FolderPlugin,FolderDemo):
	starttime = datetime.datetime.now()
	BuildJar(FolderPlugin,FolderDemo)
	BuildAPK(FolderPlugin,FolderDemo)
	endtime = datetime.datetime.now()
	print ("————————————————")
	print ("	Total Time:"+str((endtime-starttime).seconds)+" s")
	print ("————————————————")

def main():
	GetPythonCommand()
if __name__ == '__main__':
    main()