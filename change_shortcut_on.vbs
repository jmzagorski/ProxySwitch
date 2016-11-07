' turns proxy icon to off and sets the target to on so when they click
' it the proxy is in the on position
' TODO make one file and pass on/off as param

Option Explicit

dim sh, shortcut, user, proxyPath

On Error Resume Next

Set sh = CreateObject("WScript.Shell")
user=sh.ExpandEnvironmentStrings("%USERPROFILE%")
proxyPath = user + "\ProxySwitch"
Set shortcut = sh.CreateShortcut(user + "\Desktop\Proxy.lnk")
shortcut.TargetPath = proxyPath + "\proxy_on.bat"
shortcut.IconLocation = proxyPath + "\icons\off.ico"
shortcut.WorkingDirectory = proxyPath
shortcut.WindowStyle = 7
shortcut.Save

If Err Then
  sh.Echo 'Error occurred. Please manually check your proxy settings'
 Err.Clear 
End If
On Error Goto 0

Set sh = nothing
set shortCut = nothing
