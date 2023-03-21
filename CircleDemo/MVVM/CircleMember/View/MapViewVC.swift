//
//  MapViewVC.swift
//  CircleDemo
//
//  Created by mac on 17/03/23.
//

import UIKit
import GoogleMaps

class MapViewVC: UIViewController {
    @IBOutlet weak var mapView: GMSMapView!
    
    var viewModel : CirclrMemberListViewModel? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = CirclrMemberListViewModel(delegate: self)
        viewModel?.loadDataFromDataSource()
        setupMapViewConfig()
    }
    func setupMapViewConfig(){
        //GoogleMaps
        mapView.settings.myLocationButton = true
        mapView.isMyLocationEnabled = true
    }
   
    func displayDeviceList(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let memberListVC:MemberListVC = storyboard.instantiateViewController(withIdentifier: "MemberListVC") as! MemberListVC
        memberListVC.modelData = viewModel?.model
        
        if let sheet = memberListVC.sheetPresentationController {
            sheet.detents = [ .medium(), .large() ]
            sheet.prefersGrabberVisible = true
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            sheet.preferredCornerRadius = 30.0
        }
        present(memberListVC, animated: true)
        
    }
}
extension MapViewVC: CirclrMemberViewModelEvents{
    func getMemberListData() {
        let userDataArr = viewModel?.model?.userDetail
        if userDataArr?.count ?? 0 > 0{
            var bounds = GMSCoordinateBounds()
            for data in userDataArr! {
                let iconView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                iconView.downloaded(from: data.profilePic!)
                
                // Creates a marker in the center of the map.
                let marker = GMSMarker()
                let latitude = Double(data.lat ?? "")
                let longitude = Double (data.long  ?? "")
                marker.position = CLLocationCoordinate2D(latitude: latitude ?? 0.0, longitude: longitude ?? 0.0)
                marker.iconView = iconView
                marker.tracksViewChanges = true
                marker.map = mapView
                bounds = bounds.includingCoordinate(marker.position)
                
                UIView.animate(withDuration: 0.7,
                               animations: {
                    marker.iconView?.frame = CGRect(x: 0, y: 0, width: 29.0, height: 34.0)
                }, completion: nil)
            }
            mapView.setMinZoom(1, maxZoom: 15)
            let update = GMSCameraUpdate.fit(bounds, withPadding: 50)
            mapView.animate(with: update)
            mapView.setMinZoom(1, maxZoom: 20)
            
            self.displayDeviceList()
        }
       
    }
}

