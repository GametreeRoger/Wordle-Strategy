struct Song {
    let title: String
    let artist: String
    let duration: Int
    
    var formattedDuration: String {
        let minutes = duration / 60
        // The modulus (%) operator gives the remainder
        let seconds = duration % 60
        return "\(minutes)m \(seconds)s"
    }
    
    var formattedTitle: String {
        return "artist:\(artist) / title:\(title), \(formattedDuration)"
    }
}
let song = Song(title: "in case...", artist: "BiSH", duration: 218)
song.formattedTitle
