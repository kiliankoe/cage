import Cocoa

if #available(OSX 10.13, *) {
    let cageURL = URL(fileURLWithPath: "Images/\(arc4random() % 7).jpg", relativeTo: Process().currentDirectoryURL)
    try NSWorkspace.shared.setDesktopImageURL(cageURL, for: NSScreen.main!, options: [:])
} else {
    print("Sorry, cage requires macOS 10.13 for the time being.")
}
