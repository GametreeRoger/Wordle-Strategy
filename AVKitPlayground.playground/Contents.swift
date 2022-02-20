import AVKit
import PlaygroundSupport

let url = URL(string: "https://movietrailers.apple.com/movies/marvel/black-widow/black-widow-trailer-legacy_h1080p.mov")
let player = AVPlayer(url: url!)
let controller = AVPlayerViewController()
controller.player = player
PlaygroundPage.current.liveView = controller
player.play()
