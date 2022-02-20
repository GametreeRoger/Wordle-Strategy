import AVFoundation
let speechUtterance =  AVSpeechUtterance(string: "As you like, My Pleasure,光を目指して生まれてきた,絆　細い糸に結ばれて")
speechUtterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
print("Min:", AVSpeechUtteranceMinimumSpeechRate, "Max:", AVSpeechUtteranceMaximumSpeechRate, "default:", AVSpeechUtteranceDefaultSpeechRate)
speechUtterance.rate = AVSpeechUtteranceDefaultSpeechRate
speechUtterance.pitchMultiplier = 1.2
let synthesizer = AVSpeechSynthesizer()
synthesizer.speak(speechUtterance)
