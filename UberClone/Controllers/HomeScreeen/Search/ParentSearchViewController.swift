//
//  SearchViewController.swift
//  UberClone
//
//  Created by Admin on 27/07/22.
//

import UIKit
import MapKit
import FloatingPanel
import CoreLocation

class ParentSearchViewController: UIViewController, SearchViewControllerDelegate {
    
    let mapView = MKMapView()
    
    let panel = FloatingPanelController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Added Mapkit subview
        view .addSubview(mapView)
        
        //Added label on Map
        let label = UILabel(frame: CGRect(x: 20, y: 80, width: 200, height: 40))
            label.text = "Uber Map"
            label.font = UIFont.boldSystemFont(ofSize: 30.0)
            self.view.addSubview(label)
        
        //Floating panel over Map
        let searchVC = SearchViewController()
        searchVC.delegate = self
        
        panel.set(contentViewController: searchVC)
        panel.addPanel(toParent: self)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mapView.frame = view.bounds
    }
    
    func searchViewController(_ vc: SearchViewController, didSelectLocationWith coordinates: CLLocationCoordinate2D?) {
        
        guard let coordinates = coordinates else {
            return
        }
        
//        panel.dismiss(animated: true, completion: nil)
        panel.move(to: .tip, animated: true)
        mapView.removeAnnotations(mapView.annotations)
        
        let pin = MKPointAnnotation()
        pin.coordinate = coordinates
        mapView.addAnnotation(pin)
        
        mapView.setRegion(MKCoordinateRegion(center: coordinates, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)), animated: true)
    }
}
