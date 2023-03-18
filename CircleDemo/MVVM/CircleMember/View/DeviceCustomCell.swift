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
    
}
