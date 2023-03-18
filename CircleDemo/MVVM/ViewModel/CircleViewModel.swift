//
//  CircleViewModel.swift
//  CircleDemo
//
//  Created by mac on 16/03/23.
//

import Foundation

protocol CircleLViewModelEvents: AnyObject {
    func getData()
}

class CircleViewModel {
    var model : CircleListModel?
    var network = HttpClient()
    weak var delegate : CircleLViewModelEvents?
    init(delegate: CircleLViewModelEvents) {
        self.delegate = delegate
    }
    
    func loadDataFromDataSource(){
        let data = self.network.readLocalFile(forName: "circlelist")
        guard let jsonData = data else { return}
        self.network.parse(jsonData: jsonData, completion: { modelData in
            let count = modelData.circleList?.count
            self.model = modelData
        })
        delegate?.getData()
    }  
}
