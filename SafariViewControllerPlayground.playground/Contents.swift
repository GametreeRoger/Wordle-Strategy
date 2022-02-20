import SafariServices
import PlaygroundSupport
let url = URL(string: "https://www.pui-pui.com.tw/")
let controller = SFSafariViewController(url: url!)
PlaygroundPage.current.liveView = controller
