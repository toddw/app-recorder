if (CommandLine.arguments.count < 2) {
  print("Usage: getwindowid ${pid}")
}
else {
  let pid = Int(CommandLine.arguments[1])!
  getWindowId(pid: pid)
}

