import sys, os, platform
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	os.system("python.exe "+PythonLocation()+"\\..\\01_E2WSDK\\unicon20180806.py Configuration_GGS")     
if __name__=='__main__':
    main()