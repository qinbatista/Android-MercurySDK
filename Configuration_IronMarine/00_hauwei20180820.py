import sys, os, platform
def PythonLocation():
	return os.path.dirname(os.path.realpath(__file__))
def main():
	os.system("python.exe "+PythonLocation()+"\\..\\01_E2WSDK\\hauwei20180820.py Configuration_IM")     
if __name__=='__main__':
    main()