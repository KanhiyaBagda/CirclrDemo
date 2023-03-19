//
//  DeviceCustomCell.swift
//  CircleDemo
//
//  Created by mac on 19/03/23.
//

import UIKit

class DeviceCustomCell: UITableViewCell {
    @IBOutlet weak var deviceImgView: UIImageView!
    @IBOutlet weak var deviceNameLbl: UILabel!
    @IBOutlet weak var deviceLocationLbl: UILabel!
    @IBOutlet weak var deviceDateInfoLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupCellData(dataModel: CircleMemberModel, indexPath: IndexPath){
        if indexPath.section == 0{
            deviceImgView.downloaded(from: dataModel.userDetail?[indexPath.row].profilePic ?? "")
            deviceNameLbl.text = dataModel.userDetail?[indexPath.row].name
            if ((dataModel.userDetail?[indexPath.row].isLocationSharingAllowed) != nil) {
                deviceLocationLbl.text = dataModel.userDetail?[indexPath.row].country
            }
            else{
                deviceLocationLbl.text = "Location permission  off"
            }
            deviceDateInfoLbl.text = "Since " + (dataModel.userDetail?[indexPath.row].time ?? "")
        }
        else if indexPath.section == 1{
            deviceNameLbl.text = dataModel.deviceDetails?[indexPath.row].name
            deviceLocationLbl.text = dataModel.deviceDetails?[indexPath.row].country
            deviceDateInfoLbl.text = "Since " + (dataModel.deviceDetails?[indexPath.row].time ?? "")
        }
        else{
            let shortName : String = dataModel.myBleTag?[indexPath.row].shortName ?? ""
            let sharedName: String = dataModel.myBleTag?[indexPath.row].sharedUserName ?? ""
            let name = shortName + "(\(sharedName))"
            deviceNameLbl.text = name
            deviceDateInfoLbl.text = "Since " + (dataModel.deviceDetails?[indexPath.row].time ?? "")
        }
    }
}
