# ProxySwitch
turns internet proxy on/off through registry in windows. Plus does the some developer tools (see dev_on.bat)

# thanks to [StackOverflow](http://stackoverflow.com/questions/26708347/windows-desktop-widget-to-turn-proxy-on-and-off)

## Setup
1. `git clone https://github.com/jmzagorski/ProxySwitch.git <yourfolder>`
2. right click your desktop and go to New -> Shortcut
3. The first box is: **type the location of the item**. Enter *[yourfolder]\proxy_off.bat* if your proxy is on or *[yourfolder]\proxy_on.bat* if your proxy is off
4. The second box is: **type a name for this shortcut**. Make sure it is called Proxy
5. Right click the new icon on your desktop and go to **Properties**. While on the **Shortcut** tab click **Change Icon...**. Browse to the on.ico if your proxy is on or the off.ico if your proxy is off. 
  
    _The script will change the icon from on to off (or off to on) when you click it._

#### Special Note for Dev tools
you need to have an environment variable called `proxyserver`.
