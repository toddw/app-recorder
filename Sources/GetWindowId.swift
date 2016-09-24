import Cocoa
import CoreGraphics

func getWindowId(pid:Int) {
  let windowList = CGWindowListCopyWindowInfo(CGWindowListOption.excludeDesktopElements, CGWindowID(0)) as! NSArray


  var mainWindow = NSDictionary.init()


  for window in windowList {
      let win = (window as! NSDictionary)
      let windowPID = win.value(forKey: "kCGWindowOwnerPID") as! Int
      if (windowPID == pid) {
          let bounds = win.value(forKey: "kCGWindowBounds") as! NSDictionary
          if (bounds.value(forKey: "Y") as! Int != 0) {
              mainWindow = win
          }
      }
  }

  let output = mainWindow.value(forKey: "kCGWindowNumber")
  if (output != nil) {
      print("\(output!)")
  }
}

