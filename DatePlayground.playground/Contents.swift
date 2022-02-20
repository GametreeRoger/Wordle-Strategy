import Foundation

var time = Date.now
print("現在時間",time)

time.addTimeInterval(86400)
print("一天過後的時間", time)

extension Date {
    mutating func addTimeInterval(hours: Double, minutes: Double, seconds: Double) {
        self.addTimeInterval(hours * 60.0 * 60.0 + minutes * 60.0 + seconds)
    }
    
}

var today = Date.now
today.addTimeInterval(hours: 3, minutes: 50, seconds: 20)
print(today)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "西元yyyy年MM月dd日"
let dateString = dateFormatter.string(from: Date.now)

let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: Date.now)
let month = dateComponents.month
let day = dateComponents.day
let year = dateComponents.year
let weekday = dateComponents.weekday

let releaseStr = "2021-08-25"
let movieDateFormatter = DateFormatter()
movieDateFormatter.dateFormat = "yyyy-MM-dd"
movieDateFormatter.timeZone = .current
//movieDateFormatter.timeZone = TimeZone(abbreviation: "GMT")
movieDateFormatter.locale = Locale(identifier: "zh_Hant_TW")
movieDateFormatter.date(from: releaseStr)
