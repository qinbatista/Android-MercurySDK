import json,sys,os

sys.path.append(os.path.dirname(os.path.realpath(__file__)))
import PathTool
import StringFormatTool
import FileOperationTool
#easy append context to json files, just input file location!
def AppendKeyValueToJsonFile(_Location,key,value):
	FileOperationTool.CreateJsonFile(_Location)
	JsonChannelList={}
	readed = json.load(open(_Location, 'r',encoding=StringFormatTool.GetEncoding(_Location)))
	Appenddata = {}
	for myItem in readed.items():
		Appenddata[myItem[0]] = myItem[1]
		JsonChannelList.update(Appenddata)
	data = {}
	data[key] = value
	JsonChannelList.update(data)
	with open(_Location, 'w',encoding=StringFormatTool.GetEncoding(_Location)) as json_file:
		json_file.write(json.dumps(JsonChannelList,ensure_ascii=False,sort_keys=True, indent=4, separators=(',', ':')))
def main():
	AppendKeyValueToJsonFile("/Users/yupengqin/MyPragram/wechatsubmodule/sss.json","aabbbaaaaaaa","1b2aaa3")
	pass
if __name__=='__main__':
	main()