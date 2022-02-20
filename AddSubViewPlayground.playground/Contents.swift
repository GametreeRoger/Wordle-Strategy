import UIKit

var mainImage = UIImage(named: "pic01.jpeg")
var mainImageView = UIImageView(image: mainImage)
mainImageView.frame = CGRect(x: 0, y: 0, width: 620, height: 420)

// 圓角框框
mainImageView.layer.borderWidth = 10
mainImageView.layer.cornerRadius = 20
mainImageView.clipsToBounds = true
mainImageView.layer.borderColor = UIColor.orange.cgColor

// UILable
let imageLabel = UILabel(frame: CGRect(x: 400, y: 100, width: 150, height: 50))
imageLabel.text = "Pui Pui!"
imageLabel.textColor = UIColor.red
imageLabel.font = UIFont.systemFont(ofSize: 40)
imageLabel.transform = CGAffineTransform(rotationAngle: .pi / 180 * -30)
mainImageView.addSubview(imageLabel)

// emoji
func drawEmoji(emoji: String, isHorizontal: Bool, xOffset: Int, yOffset: Int) {
    for i in 0..<(isHorizontal ? 12 : 6) {
        let singleEmoji = UILabel(frame: CGRect(x: (isHorizontal ? xOffset + i * 50 : xOffset), y: (isHorizontal ? yOffset : yOffset + i * 50), width: 30, height: 30))
        singleEmoji.text = emoji
        singleEmoji.font = UIFont.systemFont(ofSize: 30)
        mainImageView.addSubview(singleEmoji)
    }
}

drawEmoji(emoji: "🐹", isHorizontal: true, xOffset: 20, yOffset: 20)
drawEmoji(emoji: "🐱", isHorizontal: false, xOffset: 20, yOffset: 70)
drawEmoji(emoji: "🦊", isHorizontal: true, xOffset: 20, yOffset: 370)
drawEmoji(emoji: "🐰", isHorizontal: false, xOffset: 570, yOffset: 70)

mainImageView
