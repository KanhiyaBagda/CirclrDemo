//
//  ViewController.swift
//  CircleDemo
//
//  Created by mac on 14/03/23.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var circle: UIView!
    @IBOutlet weak var circle1: UIView!
    @IBOutlet weak var circle2: UIView!
    @IBOutlet weak var circle3: UIView!
    @IBOutlet weak var circle4: UIView!
    @IBOutlet weak var circle5: UIView!
    @IBOutlet weak var circle6: UIView!
    @IBOutlet weak var circle7: UIView!
    
    @IBOutlet weak var circle1ActiveStatusLbl: UILabel!
    @IBOutlet weak var circle1NameLbl: UILabel!
    @IBOutlet weak var circle2ActiveStatusLbl: UILabel!
    @IBOutlet weak var circle2NameLbl: UILabel!
    @IBOutlet weak var circle3ActiveStatusLbl: UILabel!
    @IBOutlet weak var circle3NameLbl: UILabel!
    @IBOutlet weak var circle4ActiveStatusLbl: UILabel!
    @IBOutlet weak var circle4NameLbl: UILabel!
    @IBOutlet weak var circle5ActiveStatusLbl: UILabel!
    @IBOutlet weak var circle5NameLbl: UILabel!
    @IBOutlet weak var circle6ActiveStatusLbl: UILabel!
    @IBOutlet weak var circle6NameLbl: UILabel!
    @IBOutlet weak var circle7ActiveStatusLbl: UILabel!
    @IBOutlet weak var circle7NameLbl: UILabel!

    var viewModel : CircleViewModel? = nil
    var circleList :[ CircleList]?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = CircleViewModel(delegate: self)
        viewModel?.loadDataFromDataSource()
        setupCircleView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        circle.layer.cornerRadius = circle.frame.size.width/2
        circle1.layer.cornerRadius = circle1.frame.size.width/2
        circle2.layer.cornerRadius = circle2.frame.size.width/2
        circle3.layer.cornerRadius = circle3.frame.size.width/2
        circle4.layer.cornerRadius = circle4.frame.size.width/2
        circle5.layer.cornerRadius = circle5.frame.size.width/2
        circle6.layer.cornerRadius = circle6.frame.size.width/2
        circle7.layer.cornerRadius = circle7.frame.size.width/2
    }
    func setupCircleView(){

    }
    
    @IBAction func circleLocationOnMap(_sender: UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mapVC:MapViewVC = storyboard.instantiateViewController(withIdentifier: "MapViewVC") as! MapViewVC
        self.navigationController?.pushViewController(mapVC, animated: true)
    }
}
extension ViewController: CircleLViewModelEvents{
    func getData() {
         circleList = viewModel?.model?.circleList
        
        if circleList?.count ?? 0 >= 7{
            circle1ActiveStatusLbl.text = (circleList?[0].isExpired ?? false ?  " Expired " : String(circleList?[0].memberCount ?? 0))
            circle1NameLbl.text = circleList?[0].circleName
            circle2ActiveStatusLbl.text = (circleList?[1].isExpired ?? false ?  " Expired " : String(circleList?[1].memberCount ?? 0))
            circle2NameLbl.text = circleList?[1].circleName
            circle3ActiveStatusLbl.text = (circleList?[2].isExpired ?? false ?  " Expired " : String(circleList?[2].memberCount ?? 0))
            circle3NameLbl.text = circleList?[2].circleName
            circle4ActiveStatusLbl.text = (circleList?[3].isExpired ?? false ?  " Expired " : String(circleList?[3].memberCount ?? 0))
            circle4NameLbl.text = circleList?[3].circleName
            circle5ActiveStatusLbl.text = (circleList?[4].isExpired ?? false ?  " Expired " : String(circleList?[4].memberCount ?? 0))
            circle5NameLbl.text = circleList?[4].circleName
            circle6ActiveStatusLbl.text = (circleList?[5].isExpired ?? false ?  " Expired " : String(circleList?[5].memberCount ?? 0))
            circle6NameLbl.text = circleList?[5].circleName
            circle7ActiveStatusLbl.text = (circleList?[6].isExpired ?? false ?  " Expired " : String(circleList?[6].memberCount ?? 0))
            circle7NameLbl.text = circleList?[6].circleName
        }
    }
}
