' turns proxy icon to on and sets the target to off so when they click
' it the proxy is in the off position
' TODO make one file and pass on/off as param

Option Explicit

dim sh, shortcut, user, appPath, fso, onOff, batFile, iconFile

'On Error Resume Next

Set sh = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

appPath = fso.GetAbsolutePathName(".")
user=sh.ExpandEnvironmentStrings("%USERPROFILE%")
onOff=WScript.Arguments(0)
batFile="proxy_off.bat"
iconFile="on.ico"

If onOff = "on" Then
  batFile="proxy_on.bat"
  iconFile="off.ico"
End if

Set shortcut = sh.CreateShortcut(user + "\Desktop\Proxy.lnk")
shortcut.TargetPath = appPath + "\" + batFile
shortcut.IconLocation = appPath + "\icons\" + iconFile
shortcut.WorkingDirectory = appPath
shortcut.WindowStyle = 7
shortcut.Save

If Err Then
  sh.Echo 'Error occurred. Please manually check your proxy settings'
 Err.Clear 
End If
On Error Goto 0

Set sh = nothing
set shortCut = nothing
