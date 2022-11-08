import chardet,sys,os
sys.path.append(os.path.dirname(os.path.realpath(__file__)))
def GetEncoding(_Path):
	myfile = open(_Path,'rb')
	data = myfile.read()
	di= chardet.detect(data)
	myfile.close()
	myencoding = di["encoding"]
	if myencoding==None:
		myencoding ="utf-8"
	return myencoding
def is_chinese(uchar):
	"""判断一个unicode是否是汉字"""
	if uchar >= u'\u4e00' and uchar<=u'\u9fa5':
		return True
	else:
		return False

def is_number(uchar):
	"""判断一个unicode是否是数字"""
	if uchar >= u'\u0030' and uchar<=u'\u0039':
		return True
	else:
		return False

def is_alphabet(uchar):
	"""判断一个unicode是否是英文字母"""
	if (uchar >= u'\u0041' and uchar<=u'\u005a') or (uchar >= u'\u0061' and uchar<=u'\u007a'):
		return True
	else:
		return False

def is_other(uchar):
	"""判断是否非汉字，数字和英文字符"""
	if not (is_chinese(uchar) or is_number(uchar) or is_alphabet(uchar)):
		return True
	else:
		return False
def main():
	#print(PythonLocation())
	pass
if __name__=='__main__':
	main()