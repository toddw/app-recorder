import Cocoa
import CoreGraphics

func getWindowId(pid:Int) {
  let windowList = CGWindowListCopyWindowInfo(CGWindowListOption.excludeDesktopElements, CGWindowID(0)) as! NSArray


  var mainWindow = NSDictionary.init()


  for window in windowList {
      let win = (window as! NSDictionary)
      let layer = win.value(forKey: "kCGWindowLayer") as! Int
      let windowPID = win.value(forKey: "kCGWindowOwnerPID") as! Int
      if (windowPID == pid) {
          if (layer == 0) {
              mainWindow = win
          }
      }
  }

  let output = mainWindow.value(forKey: "kCGWindowNumber")
  if (output != nil) {
      print("\(output!)")
  }
}

