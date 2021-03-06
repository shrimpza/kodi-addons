import os, subprocess
import xbmcaddon, xbmc, xbmcgui

addon = xbmcaddon.Addon()

def launch():

    addonPath = addon.getAddonInfo('path')

    cmd = os.path.join(addonPath, 'launch.sh')

    try:
        xbmc.log("Launching script %s" % cmd)
        subprocess.call(["chmod", "+x", cmd]) # make sure it's executable
        subprocess.call('"' + cmd + '"', shell=True)
    except:
        xbmcgui.Dialog().ok("Failed to launch", "Failed to launch script %s" % cmd)

launch()
