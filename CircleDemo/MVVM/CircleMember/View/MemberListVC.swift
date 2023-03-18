//
//  MemberListVC.swift
//  CircleDemo
//
//  Created by mac on 18/03/23.
//

import UIKit

class MemberListVC: UIViewController {
    
    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "DeviceCustomCell", bundle: nil), forCellReuseIdentifier: "DeviceCustomCell")
    }
}

extension MemberListVC: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Device"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeviceCustomCell", for: indexPath)  as! DeviceCustomCell
        
        return cell
    }
}
