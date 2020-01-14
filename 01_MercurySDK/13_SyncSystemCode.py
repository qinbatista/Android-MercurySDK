import PythonFunction
import sys
import os

#同步代码SYNC CODE		
def SyncPlugin():
	PythonFunction.FuncSyncSystemPlugin.SyncSystemSDKToE2WSDK()#同步渠道代码SYNC CHANNEL CODE
	
def main():
	SyncPlugin()	
	#input("Prease <enter>")
if __name__ == '__main__':
    main()