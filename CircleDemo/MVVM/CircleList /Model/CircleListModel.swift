//
//  CircleListModel.swift
//  CircleDemo
//
//  Created by mac on 16/03/23.
//
import Foundation

// MARK: - Welcome
struct CircleListModel: Codable {
    
    let result : Result?
    let circleCount : Int?
    let circleList : [CircleList]?
    let bleTagList : [BleTagList]?
    let deviceListList : [String]?
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
        case circleCount = "CircleCount"
        case circleList = "CircleList"
        case bleTagList = "BleTagList"
        case deviceListList = "DeviceListList"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        result = try values.decodeIfPresent(Result.self, forKey: .result)
        circleCount = try values.decodeIfPresent(Int.self, forKey: .circleCount)
        circleList = try values.decodeIfPresent([CircleList].self, forKey: .circleList)
        bleTagList = try values.decodeIfPresent([BleTagList].self, forKey: .bleTagList)
        deviceListList = try values.decodeIfPresent([String].self, forKey: .deviceListList)
    }
}

// MARK: - BleTagList
struct BleTagList: Codable {
    let bleTagId : Int?
    let shortName : String?
    let iconPath : String?
    let iconId : Int?
    let userId : Int?
    let bleTagMacID : String?
    let markedAsLost : Bool?
    let recvTime : Int?
    let locationStatus : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case bleTagId = "bleTagId"
        case shortName = "shortName"
        case iconPath = "iconPath"
        case iconId = "iconId"
        case userId = "userId"
        case bleTagMacID = "bleTagMacID"
        case markedAsLost = "markedAsLost"
        case recvTime = "recvTime"
        case locationStatus = "locationStatus"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bleTagId = try values.decodeIfPresent(Int.self, forKey: .bleTagId)
        shortName = try values.decodeIfPresent(String.self, forKey: .shortName)
        iconPath = try values.decodeIfPresent(String.self, forKey: .iconPath)
        iconId = try values.decodeIfPresent(Int.self, forKey: .iconId)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
        bleTagMacID = try values.decodeIfPresent(String.self, forKey: .bleTagMacID)
        markedAsLost = try values.decodeIfPresent(Bool.self, forKey: .markedAsLost)
        recvTime = try values.decodeIfPresent(Int.self, forKey: .recvTime)
        locationStatus = try values.decodeIfPresent(Int.self, forKey: .locationStatus)
    }
    
}
// MARK: - CircleList
struct CircleList: Codable {
    let circleId : Int?
    let circleName : String?
    let circleColorCode : String?
    let circleType : String?
    let isActive : Int?
    let isPersonal : Bool?
    let isExpired : Bool?
    let memberCount : Int?
    let totalTimeSlot : Int?
    let createdDate : Int?
    let noOfVisits : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case circleId = "CircleId"
        case circleName = "CircleName"
        case circleColorCode = "CircleColorCode"
        case circleType = "CircleType"
        case isActive = "IsActive"
        case isPersonal = "IsPersonal"
        case isExpired = "IsExpired"
        case memberCount = "MemberCount"
        case totalTimeSlot = "totalTimeSlot"
        case createdDate = "createdDate"
        case noOfVisits = "noOfVisits"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        circleId = try values.decodeIfPresent(Int.self, forKey: .circleId)
        circleName = try values.decodeIfPresent(String.self, forKey: .circleName)
        circleColorCode = try values.decodeIfPresent(String.self, forKey: .circleColorCode)
        circleType = try values.decodeIfPresent(String.self, forKey: .circleType)
        isActive = try values.decodeIfPresent(Int.self, forKey: .isActive)
        isPersonal = try values.decodeIfPresent(Bool.self, forKey: .isPersonal)
        isExpired = try values.decodeIfPresent(Bool.self, forKey: .isExpired)
        memberCount = try values.decodeIfPresent(Int.self, forKey: .memberCount)
        totalTimeSlot = try values.decodeIfPresent(Int.self, forKey: .totalTimeSlot)
        createdDate = try values.decodeIfPresent(Int.self, forKey: .createdDate)
        noOfVisits = try values.decodeIfPresent(Int.self, forKey: .noOfVisits)
    }
    
}
// MARK: - Result
struct Result: Codable {
    let code : Int?
    let msg : String?
    let res : String?
    
    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        case msg = "msg"
        case res = "res"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(Int.self, forKey: .code)
        msg = try values.decodeIfPresent(String.self, forKey: .msg)
        res = try values.decodeIfPresent(String.self, forKey: .res)
    }
    
}
