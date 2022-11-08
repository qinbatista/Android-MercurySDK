import PythonFunction
import sys
import os

#同步代码SYNC CODE		
def SyncPlugin():
	PythonFunction.FuncSyncChannelPlugin.CopyTrackFolder()#同步渠道代码SYNC CHANNEL CODE
	PythonFunction.FuncSyncChannelPlugin.InitChannelPlugin()#同步渠道代码SYNC CHANNEL CODE
	PythonFunction.FuncSyncChannelPlugin.SyncSDKToE2WSDK()
def main():
	SyncPlugin()
if __name__ == '__main__':
    main()