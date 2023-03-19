//
//  MemberListVC.swift
//  CircleDemo
//
//  Created by mac on 18/03/23.
//

import UIKit

class MemberListVC: UIViewController {
    @IBOutlet weak var tableView : UITableView!
    var modelData :  CircleMemberModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
        tableView.register(UINib(nibName: "DeviceCustomCell", bundle: nil), forCellReuseIdentifier: "DeviceCustomCell")
    }
}
extension MemberListVC: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1{
            if modelData?.deviceDetails?.count ?? 0 > 0{
                return "Shared Devices"
            }
        }
        if section == 2{
            if modelData?.myBleTag?.count ?? 0 > 0{
                return "Shared Tags"
            }
        }
        return nil
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return modelData?.userDetail?.count ?? 0
        }
        if section == 1{
            return modelData?.deviceDetails?.count ?? 0
        }
        if section == 2{
            return modelData?.myBleTag?.count ?? 0
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeviceCustomCell", for: indexPath)  as! DeviceCustomCell
        cell.setupCellData(dataModel: modelData!, indexPath: indexPath)
        return cell
    }
}
