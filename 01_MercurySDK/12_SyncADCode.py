import PythonFunction
import sys
import os

#同步代码SYNC CODE		
def SyncPlugin():
	PythonFunction.FuncSyncAD.CopyTrackFolder()#同步渠道代码SYNC CHANNEL CODE
	PythonFunction.FuncSyncAD.InitChannelPlugin()#同步渠道代码SYNC CHANNEL CODE
	PythonFunction.FuncSyncAD.SyncSDKToE2WSDK()
def main():
	SyncPlugin()	
	#input("Prease <enter>")
if __name__ == '__main__':
    main()