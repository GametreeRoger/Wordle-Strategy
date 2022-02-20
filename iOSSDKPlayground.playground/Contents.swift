import AVFoundation

let url = URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview124/v4/1a/0b/e5/1a0be5ab-12e7-8bb3-2fa6-5724a3dda437/mzaf_13480818112944396654.plus.aac.p.m4a")
let player = AVPlayer(url: url!)
player.play()
