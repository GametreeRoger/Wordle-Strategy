import UIKit

let bearImageView = UIImageView(image: UIImage(named: "s14.png"))
bearImageView.backgroundColor = UIColor(red: 0, green: 0.5, blue: 0.7, alpha: 1)
bearImageView.backgroundColor = UIColor(red: 0, green: 0.6, blue: 0.7, alpha: 0)

let patternImageView = UIImageView(image: UIImage(named: "pattern.jpeg"))

patternImageView.frame = bearImageView.frame
patternImageView.addSubview(bearImageView)

class Baby {
    var name = "peter"
}
weak var cuteBaby: Baby? = Baby()
print(cuteBaby?.name)
