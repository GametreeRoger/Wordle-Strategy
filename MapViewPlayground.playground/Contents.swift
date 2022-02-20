import MapKit
import PlaygroundSupport
let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.036976, longitude: 121.499927), latitudinalMeters: 1000, longitudinalMeters: 1000)
let lungshanAnnotation = MKPointAnnotation()
lungshanAnnotation.coordinate = CLLocationCoordinate2D(latitude: 25.036976, longitude: 121.499927)
lungshanAnnotation.title = "龍山寺"
lungshanAnnotation.subtitle = "好多遊客"
mapView.addAnnotation(lungshanAnnotation)
let sushiAnnotation = MKPointAnnotation()
sushiAnnotation.coordinate = CLLocationCoordinate2D(latitude: 25.039903, longitude: 121.502686)
sushiAnnotation.title = "三味食堂"
sushiAnnotation.subtitle = "巨無霸鮭魚壽司"
mapView.addAnnotation(sushiAnnotation)
PlaygroundPage.current.liveView = mapView
