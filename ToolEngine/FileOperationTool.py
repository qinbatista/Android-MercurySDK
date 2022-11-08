import os,sys
import json
sys.path.append(os.path.dirname(os.path.realpath(__file__)))
import StringFormatTool
import EnvironmentTool
#Create a empty file without any context
def CreateFile(_Path):
	if os.path.isfile(_Path):
		print("[FileOperationTool][CreateFile] file exist:"+_Path)
	else:
		file = open(_Path,'w',encoding='UTF-8')
		file.close()
		print("[FileOperationTool][CreateFile] file create success!:"+_Path)



#Create a empty json format file 
def CreateJsonFile(_Path):
	if os.path.isfile(_Path):
		print("[FileOperationTool][CreateJsonFile] file exist:"+_Path)
		try:
			json.load(open(_Path, 'r',encoding=StringFormatTool.GetEncoding(_Path)))
		except:
			os.remove(_Path)
			file = open(_Path,'w',encoding='UTF-8')
			file.write("{}")
			file.close()
			print("[FileOperationTool][CreateJsonFile] file create success!:"+_Path)
			print("[FileOperationTool][CreateJsonFile] it is not Json file, rebuilded new json file:"+_Path)
	else:
		file = open(_Path,'w',encoding='UTF-8')
		file.write("{}")
		file.close()
		print("[FileOperationTool][CreateJsonFile] file create success!:"+_Path)
#Rewrite file:
def ReplaceKeyWord(_Path,keyword,nextLine):
	if os.path.isfile(_Path):
		file_object = open(_Path,encoding="utf8")
	JavaCode=[]
	isJump=False
	try:
		all_the_text = file_object.readlines()
		for i in all_the_text:
			if(i.find(keyword)!=-1):
				JavaCode.append(i)
				if EnvironmentTool.CurrentPlatform()=="Windows":
					JavaCode.append(nextLine+"\n")
				if EnvironmentTool.CurrentPlatform()=="Mac":
					JavaCode.append(nextLine+"\r")
				isJump=True
			else:
				if isJump:
					isJump=False
				else:
					JavaCode.append(i)
	finally:
		file_object.close( )

	file_object_read = open(_Path,'w',encoding="utf8")
	try:
		file_object_read.writelines(JavaCode)
	finally:
		file_object_read.close()
def main():
	#CreateFile("/Users/yupengqin/MyPragram/ToolEngine/String.json")
	pass
if __name__=='__main__':
	main()