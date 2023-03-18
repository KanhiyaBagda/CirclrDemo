//
//  MapViewVC.swift
//  CircleDemo
//
//  Created by mac on 17/03/23.
//

import UIKit
import GoogleMaps

class MapViewVC: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var mapView: GMSMapView!
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var heightConstraint : NSLayoutConstraint!
    var locationManager = CLLocationManager()
    
    var circleId : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMapViewConfig()
    }
    
    
    func setupMapViewConfig(){
        //GoogleMaps
        mapView.delegate = self
        mapView.settings.myLocationButton = true
        mapView.isMyLocationEnabled = true
        
        //Location Manager code to fetch current location
        self.locationManager.delegate = self
        self.locationManager.startUpdatingLocation()
    }
    //IBAction
    @IBAction func displayDeviceList(_sender: UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let memberListVC:MemberListVC = storyboard.instantiateViewController(withIdentifier: "MemberListVC") as! MemberListVC
        self.navigationController?.present(memberListVC, animated: true)
    }
}
extension MapViewVC: CLLocationManagerDelegate {
    //Location Manager delegates
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        let camera = GMSCameraPosition.camera(withLatitude: (location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!, zoom: 17.0)
        self.mapView?.animate(to: camera)
        self.locationManager.stopUpdatingLocation()
    }
}

extension MapViewVC : GMSMapViewDelegate{
    //MARK - GMSMarker Dragging
    func mapView(_ mapView: GMSMapView, didBeginDragging marker: GMSMarker) {
        print("didBeginDragging")
    }
    func mapView(_ mapView: GMSMapView, didDrag marker: GMSMarker) {
        print("didDrag")
    }
    func mapView(_ mapView: GMSMapView, didEndDragging marker: GMSMarker) {
        print("didEndDragging")
    }
}
