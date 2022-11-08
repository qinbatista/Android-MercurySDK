import os,sys
sys.path.append(os.path.dirname(os.path.realpath(__file__)))
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))

def	ListFolder(path):
	List = []
	for i in os.listdir(path):
		List.append(i)
	return List
def FindIOSSDKSource(_path):
	ListMyFolder = []
	for dirpath, dirnames, filenames in os.walk(_path):
		#print ('Directory', dirpath)
		dirnames
		for filename in filenames:
			#print (' File', filename)
			AllPath = dirpath+"/"+filename
			if AllPath.find(".DS_Store")==-1 and AllPath.find(".bundle/")==-1 and AllPath.find(".framework/")==-1:
				ListMyFolder.append(dirpath+"/"+filename)
			else:
				if  AllPath.find(".DS_Store")==-1:
					if AllPath.find(".framework/")!=-1:
						package = AllPath[:AllPath.find(".framework/")+len(".framework/")-1]
						if ListMyFolder.count(package)<=0:
							ListMyFolder.append(package)
					elif AllPath.find(".bundle/")!=-1:
						package = AllPath[:AllPath.find(".bundle/")+len(".bundle/")-1]
						if ListMyFolder.count(package)<=0:
							ListMyFolder.append(package)
					else:
						ListMyFolder.append(package)
	return ListMyFolder
def main():
	pass
	#print(PythonLocation())
if __name__=='__main__':
	main()