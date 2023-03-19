//
//  HttpClient.swift
//  CircleDemo
//
//  Created by mac on 14/03/23.
//

import UIKit

class HttpClient: NSObject {
    
    //loadJson 
    func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
    
    //Parse -Jsondata
    func parse(jsonData: Data,completion :@escaping(CircleListModel) -> Void) {
        do {
            let decodedData = try JSONDecoder().decode(CircleListModel.self,
                                                       from: jsonData)
            
            completion(decodedData)
        } catch {
            print("decode error")
        }
    }
    
    //Parse -Jsondata
    func parseCircleMember(jsonData: Data,completion :@escaping(CircleMemberModel) -> Void) {
        do {
            let decodedData = try JSONDecoder().decode(CircleMemberModel.self,
                                                       from: jsonData)
            
            completion(decodedData)
        } catch {
            print("decode error")
        }
    }
}
