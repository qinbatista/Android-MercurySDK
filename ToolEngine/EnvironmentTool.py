import sys,os
import platform
sys.path.append(os.path.dirname(os.path.realpath(__file__)))
def CurrentPlatform():
	sysstr = platform.system()
	if(sysstr =="Windows"):
		return "Windows"
	elif(sysstr == "Linux"):
		return "Linux"
	elif(sysstr == "Darwin"):
		return "Mac"
	else:
		return "None"
def main():
	#print(PythonLocation())
	pass
if __name__=='__main__':
	main()