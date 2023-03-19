//
//  CirclrMemberListViewModel.swift
//  CircleDemo
//
//  Created by mac on 19/03/23.
//

import Foundation


protocol CirclrMemberViewModelEvents: AnyObject {
    func getMemberListData()
}

class CirclrMemberListViewModel {
    var model : CircleMemberModel?
    var network = HttpClient()
    weak var delegate : CirclrMemberViewModelEvents?
    init(delegate: CirclrMemberViewModelEvents) {
        self.delegate = delegate
    }
    
    func loadDataFromDataSource(){
        let data = self.network.readLocalFile(forName: "circlemember")
        guard let jsonData = data else { return}
        self.network.parseCircleMember(jsonData: jsonData, completion: { modelData in
            self.model = modelData
        })
        delegate?.getMemberListData()
    }
}
