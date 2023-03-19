//
//  CircleMemberModel.swift
//  CircleDemo
//
//  Created by mac on 19/03/23.
//

import Foundation

struct  CircleMemberModel: Codable{
    let result : ResultData?
    let userDetail : [UserDetail]?
    let deviceDetails : [DeviceDetails]?
    let bleTagDetail : [BleTagDetail]?
    let circleDetail : [CircleDetail]?
    let photoList : [String]?
    let myDevice : [String]?
    let myBleTag : [MyBleTag]?
    let checkPoints : String?
    let deletedCheckPoints : [String]?
    let checkPoints_zone : [String]?

    enum CodingKeys: String, CodingKey {

        case result = "result"
        case userDetail = "UserDetail"
        case deviceDetails = "DeviceDetails"
        case bleTagDetail = "BleTagDetail"
        case circleDetail = "CircleDetail"
        case photoList = "PhotoList"
        case myDevice = "MyDevice"
        case myBleTag = "MyBleTag"
        case checkPoints = "checkPoints"
        case deletedCheckPoints = "deletedCheckPoints"
        case checkPoints_zone = "checkPoints_zone"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        result = try values.decodeIfPresent(ResultData.self, forKey: .result)
        userDetail = try values.decodeIfPresent([UserDetail].self, forKey: .userDetail)
        deviceDetails = try values.decodeIfPresent([DeviceDetails].self, forKey: .deviceDetails)
        bleTagDetail = try values.decodeIfPresent([BleTagDetail].self, forKey: .bleTagDetail)
        circleDetail = try values.decodeIfPresent([CircleDetail].self, forKey: .circleDetail)
        photoList = try values.decodeIfPresent([String].self, forKey: .photoList)
        myDevice = try values.decodeIfPresent([String].self, forKey: .myDevice)
        myBleTag = try values.decodeIfPresent([MyBleTag].self, forKey: .myBleTag)
        checkPoints = try values.decodeIfPresent(String.self, forKey: .checkPoints)
        deletedCheckPoints = try values.decodeIfPresent([String].self, forKey: .deletedCheckPoints)
        checkPoints_zone = try values.decodeIfPresent([String].self, forKey: .checkPoints_zone)
    }
}
struct CircleDetail : Codable {
    let ciecleId : Int?
    let totalTimeSlot : Int?
    let expiredTime : String?
    let circleColorCode : String?
    let circleCode : Int?
    let msgToShare : String?
    let circleName : String?
    let isPersonal : Bool?
    let adminName : String?
    let adminUserId : String?
    let circleType : String?
    let createdSince : Int?
    let isRequestSentToJoin : Bool?
    let isExpired : Bool?

    enum CodingKeys: String, CodingKey {

        case ciecleId = "CiecleId"
        case totalTimeSlot = "totalTimeSlot"
        case expiredTime = "ExpiredTime"
        case circleColorCode = "CircleColorCode"
        case circleCode = "CircleCode"
        case msgToShare = "MsgToShare"
        case circleName = "CircleName"
        case isPersonal = "IsPersonal"
        case adminName = "AdminName"
        case adminUserId = "AdminUserId"
        case circleType = "CircleType"
        case createdSince = "CreatedSince"
        case isRequestSentToJoin = "IsRequestSentToJoin"
        case isExpired = "IsExpired"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        ciecleId = try values.decodeIfPresent(Int.self, forKey: .ciecleId)
        totalTimeSlot = try values.decodeIfPresent(Int.self, forKey: .totalTimeSlot)
        expiredTime = try values.decodeIfPresent(String.self, forKey: .expiredTime)
        circleColorCode = try values.decodeIfPresent(String.self, forKey: .circleColorCode)
        circleCode = try values.decodeIfPresent(Int.self, forKey: .circleCode)
        msgToShare = try values.decodeIfPresent(String.self, forKey: .msgToShare)
        circleName = try values.decodeIfPresent(String.self, forKey: .circleName)
        isPersonal = try values.decodeIfPresent(Bool.self, forKey: .isPersonal)
        adminName = try values.decodeIfPresent(String.self, forKey: .adminName)
        adminUserId = try values.decodeIfPresent(String.self, forKey: .adminUserId)
        circleType = try values.decodeIfPresent(String.self, forKey: .circleType)
        createdSince = try values.decodeIfPresent(Int.self, forKey: .createdSince)
        isRequestSentToJoin = try values.decodeIfPresent(Bool.self, forKey: .isRequestSentToJoin)
        isExpired = try values.decodeIfPresent(Bool.self, forKey: .isExpired)
    }

}
struct BleTagDetail : Codable {
    let bleTagMacID : String?
    let addedByUserId : Int?
    let shortName : String?
    let lat : Double?
    let lng : Double?
    let markedAsLost : Bool?
    let iconPath : String?
    let iconId : Int?
    let recvTime : Int?
    let locationStatus : Int?
    let bleTagId : Int?
    let addedDate : String?
    let activationDate : String?
    let sharedUserName : String?
    let bleType : String?
    let relayLocStatus : String?
    let relayLockedByUser : String?
    let relayLockedLocation_lat : String?
    let relayLockedLocation_lng : String?
    let isParked : Bool?
    let isAdmin : Int?

    enum CodingKeys: String, CodingKey {

        case bleTagMacID = "bleTagMacID"
        case addedByUserId = "addedByUserId"
        case shortName = "shortName"
        case lat = "lat"
        case lng = "lng"
        case markedAsLost = "markedAsLost"
        case iconPath = "iconPath"
        case iconId = "iconId"
        case recvTime = "recvTime"
        case locationStatus = "locationStatus"
        case bleTagId = "bleTagId"
        case addedDate = "addedDate"
        case activationDate = "activationDate"
        case sharedUserName = "SharedUserName"
        case bleType = "bleType"
        case relayLocStatus = "relayLocStatus"
        case relayLockedByUser = "relayLockedByUser"
        case relayLockedLocation_lat = "relayLockedLocation_lat"
        case relayLockedLocation_lng = "relayLockedLocation_lng"
        case isParked = "isParked"
        case isAdmin = "isAdmin"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bleTagMacID = try values.decodeIfPresent(String.self, forKey: .bleTagMacID)
        addedByUserId = try values.decodeIfPresent(Int.self, forKey: .addedByUserId)
        shortName = try values.decodeIfPresent(String.self, forKey: .shortName)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        markedAsLost = try values.decodeIfPresent(Bool.self, forKey: .markedAsLost)
        iconPath = try values.decodeIfPresent(String.self, forKey: .iconPath)
        iconId = try values.decodeIfPresent(Int.self, forKey: .iconId)
        recvTime = try values.decodeIfPresent(Int.self, forKey: .recvTime)
        locationStatus = try values.decodeIfPresent(Int.self, forKey: .locationStatus)
        bleTagId = try values.decodeIfPresent(Int.self, forKey: .bleTagId)
        addedDate = try values.decodeIfPresent(String.self, forKey: .addedDate)
        activationDate = try values.decodeIfPresent(String.self, forKey: .activationDate)
        sharedUserName = try values.decodeIfPresent(String.self, forKey: .sharedUserName)
        bleType = try values.decodeIfPresent(String.self, forKey: .bleType)
        relayLocStatus = try values.decodeIfPresent(String.self, forKey: .relayLocStatus)
        relayLockedByUser = try values.decodeIfPresent(String.self, forKey: .relayLockedByUser)
        relayLockedLocation_lat = try values.decodeIfPresent(String.self, forKey: .relayLockedLocation_lat)
        relayLockedLocation_lng = try values.decodeIfPresent(String.self, forKey: .relayLockedLocation_lng)
        isParked = try values.decodeIfPresent(Bool.self, forKey: .isParked)
        isAdmin = try values.decodeIfPresent(Int.self, forKey: .isAdmin)
    }

}
struct DeviceDetails : Codable {
    let name : String?
    let userId : String?
    let lat : String?
    let long : String?
    let prvlat : String?
    let prvlng : String?
    let time : String?
    let country : String?
    let battery : Int?
    let onlineOffline : String?
    let aC : String?
    let eng : String?
    let speed : String?
    let engCutStatus : String?
    let isValueAvailable : Bool?
    let isDriverBehaviourAvailable : Bool?
    let status1 : String?
    let status : String?
    let iMEI : String?
    let deviceId : Int?
    let iconType : Int?
    let subscriptionDays : String?
    let sharetype : String?
    let state : String?
    let distance : Double?
    let parkingStatus : Bool?
    let isTrackingSharingAllowed : Int?
    let sharedUserName : String?

    enum CodingKeys: String, CodingKey {

        case name = "Name"
        case userId = "UserId"
        case lat = "lat"
        case long = "long"
        case prvlat = "prvlat"
        case prvlng = "prvlng"
        case time = "Time"
        case country = "Country"
        case battery = "Battery"
        case onlineOffline = "OnlineOffline"
        case aC = "AC"
        case eng = "Eng"
        case speed = "Speed"
        case engCutStatus = "EngCutStatus"
        case isValueAvailable = "isValueAvailable"
        case isDriverBehaviourAvailable = "isDriverBehaviourAvailable"
        case status1 = "Status1"
        case status = "status"
        case iMEI = "IMEI"
        case deviceId = "deviceId"
        case iconType = "IconType"
        case subscriptionDays = "subscriptionDays"
        case sharetype = "sharetype"
        case state = "state"
        case distance = "distance"
        case parkingStatus = "ParkingStatus"
        case isTrackingSharingAllowed = "IsTrackingSharingAllowed"
        case sharedUserName = "SharedUserName"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        userId = try values.decodeIfPresent(String.self, forKey: .userId)
        lat = try values.decodeIfPresent(String.self, forKey: .lat)
        long = try values.decodeIfPresent(String.self, forKey: .long)
        prvlat = try values.decodeIfPresent(String.self, forKey: .prvlat)
        prvlng = try values.decodeIfPresent(String.self, forKey: .prvlng)
        time = try values.decodeIfPresent(String.self, forKey: .time)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        battery = try values.decodeIfPresent(Int.self, forKey: .battery)
        onlineOffline = try values.decodeIfPresent(String.self, forKey: .onlineOffline)
        aC = try values.decodeIfPresent(String.self, forKey: .aC)
        eng = try values.decodeIfPresent(String.self, forKey: .eng)
        speed = try values.decodeIfPresent(String.self, forKey: .speed)
        engCutStatus = try values.decodeIfPresent(String.self, forKey: .engCutStatus)
        isValueAvailable = try values.decodeIfPresent(Bool.self, forKey: .isValueAvailable)
        isDriverBehaviourAvailable = try values.decodeIfPresent(Bool.self, forKey: .isDriverBehaviourAvailable)
        status1 = try values.decodeIfPresent(String.self, forKey: .status1)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        iMEI = try values.decodeIfPresent(String.self, forKey: .iMEI)
        deviceId = try values.decodeIfPresent(Int.self, forKey: .deviceId)
        iconType = try values.decodeIfPresent(Int.self, forKey: .iconType)
        subscriptionDays = try values.decodeIfPresent(String.self, forKey: .subscriptionDays)
        sharetype = try values.decodeIfPresent(String.self, forKey: .sharetype)
        state = try values.decodeIfPresent(String.self, forKey: .state)
        distance = try values.decodeIfPresent(Double.self, forKey: .distance)
        parkingStatus = try values.decodeIfPresent(Bool.self, forKey: .parkingStatus)
        isTrackingSharingAllowed = try values.decodeIfPresent(Int.self, forKey: .isTrackingSharingAllowed)
        sharedUserName = try values.decodeIfPresent(String.self, forKey: .sharedUserName)
    }

}
struct ResultData : Codable {
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
struct UserDetail : Codable {
    let userId : Int?
    let mobileNo : String?
    let name : String?
    let profilePic : String?
    let lat : String?
    let long : String?
    let chatServerID : String?
    let time : String?
    let tsTime : Int?
    let country : String?
    let battery : Int?
    let onlineOffline : String?
    let tsTime1 : Int?
    let transition : Int?
    let isLocationSharingAllowed : Bool?
    let isSoundNotificationAllowed : Bool?
    let permissionOnOff : Bool?
    let permissionOnOffStatusChangedTime_utc : Int?
    let locationsharingStatusChangedTime_utc : Int?
    let onlineOfflineStatus : Bool?
    let gpsOnOffStatusChangedTime_utc : Int?
    let isMemberActive : Int?
    let isSaveMediaFile : Bool?
    let totalTimeSlot : Int?
    let column1 : String?
    let isExpired : Int?
    let showOnHomeScreen : Bool?
    let circleId : Int?

    enum CodingKeys: String, CodingKey {

        case userId = "userId"
        case mobileNo = "MobileNo"
        case name = "Name"
        case profilePic = "ProfilePic"
        case lat = "lat"
        case long = "long"
        case chatServerID = "ChatServerID"
        case time = "Time"
        case tsTime = "tsTime"
        case country = "Country"
        case battery = "Battery"
        case onlineOffline = "OnlineOffline"
        case tsTime1 = "tsTime1"
        case transition = "transition"
        case isLocationSharingAllowed = "IsLocationSharingAllowed"
        case isSoundNotificationAllowed = "IsSoundNotificationAllowed"
        case permissionOnOff = "PermissionOnOff"
        case permissionOnOffStatusChangedTime_utc = "PermissionOnOffStatusChangedTime_utc"
        case locationsharingStatusChangedTime_utc = "LocationsharingStatusChangedTime_utc"
        case onlineOfflineStatus = "OnlineOfflineStatus"
        case gpsOnOffStatusChangedTime_utc = "GpsOnOffStatusChangedTime_utc"
        case isMemberActive = "isMemberActive"
        case isSaveMediaFile = "IsSaveMediaFile"
        case totalTimeSlot = "totalTimeSlot"
        case column1 = "Column1"
        case isExpired = "IsExpired"
        case showOnHomeScreen = "showOnHomeScreen"
        case circleId = "circleId"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
        mobileNo = try values.decodeIfPresent(String.self, forKey: .mobileNo)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        profilePic = try values.decodeIfPresent(String.self, forKey: .profilePic)
        lat = try values.decodeIfPresent(String.self, forKey: .lat)
        long = try values.decodeIfPresent(String.self, forKey: .long)
        chatServerID = try values.decodeIfPresent(String.self, forKey: .chatServerID)
        time = try values.decodeIfPresent(String.self, forKey: .time)
        tsTime = try values.decodeIfPresent(Int.self, forKey: .tsTime)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        battery = try values.decodeIfPresent(Int.self, forKey: .battery)
        onlineOffline = try values.decodeIfPresent(String.self, forKey: .onlineOffline)
        tsTime1 = try values.decodeIfPresent(Int.self, forKey: .tsTime1)
        transition = try values.decodeIfPresent(Int.self, forKey: .transition)
        isLocationSharingAllowed = try values.decodeIfPresent(Bool.self, forKey: .isLocationSharingAllowed)
        isSoundNotificationAllowed = try values.decodeIfPresent(Bool.self, forKey: .isSoundNotificationAllowed)
        permissionOnOff = try values.decodeIfPresent(Bool.self, forKey: .permissionOnOff)
        permissionOnOffStatusChangedTime_utc = try values.decodeIfPresent(Int.self, forKey: .permissionOnOffStatusChangedTime_utc)
        locationsharingStatusChangedTime_utc = try values.decodeIfPresent(Int.self, forKey: .locationsharingStatusChangedTime_utc)
        onlineOfflineStatus = try values.decodeIfPresent(Bool.self, forKey: .onlineOfflineStatus)
        gpsOnOffStatusChangedTime_utc = try values.decodeIfPresent(Int.self, forKey: .gpsOnOffStatusChangedTime_utc)
        isMemberActive = try values.decodeIfPresent(Int.self, forKey: .isMemberActive)
        isSaveMediaFile = try values.decodeIfPresent(Bool.self, forKey: .isSaveMediaFile)
        totalTimeSlot = try values.decodeIfPresent(Int.self, forKey: .totalTimeSlot)
        column1 = try values.decodeIfPresent(String.self, forKey: .column1)
        isExpired = try values.decodeIfPresent(Int.self, forKey: .isExpired)
        showOnHomeScreen = try values.decodeIfPresent(Bool.self, forKey: .showOnHomeScreen)
        circleId = try values.decodeIfPresent(Int.self, forKey: .circleId)
    }

}
struct MyBleTag : Codable {
    let bleTagMacID : String?
    let addedByUserId : Int?
    let shortName : String?
    let lat : Double?
    let lng : Double?
    let markedAsLost : Bool?
    let iconPath : String?
    let iconId : Int?
    let recvTime : Int?
    let locationStatus : Int?
    let bleTagId : Int?
    let addedDate : String?
    let activationDate : String?
    let sharedUserName : String?
    let bleType : String?
    let relayLocStatus : String?
    let relayLockedByUser : String?
    let relayLockedLocation_lat : String?
    let relayLockedLocation_lng : String?
    let isParked : Bool?
    let isAdmin : Int?

    enum CodingKeys: String, CodingKey {

        case bleTagMacID = "bleTagMacID"
        case addedByUserId = "addedByUserId"
        case shortName = "shortName"
        case lat = "lat"
        case lng = "lng"
        case markedAsLost = "markedAsLost"
        case iconPath = "iconPath"
        case iconId = "iconId"
        case recvTime = "recvTime"
        case locationStatus = "locationStatus"
        case bleTagId = "bleTagId"
        case addedDate = "addedDate"
        case activationDate = "activationDate"
        case sharedUserName = "SharedUserName"
        case bleType = "bleType"
        case relayLocStatus = "relayLocStatus"
        case relayLockedByUser = "relayLockedByUser"
        case relayLockedLocation_lat = "relayLockedLocation_lat"
        case relayLockedLocation_lng = "relayLockedLocation_lng"
        case isParked = "isParked"
        case isAdmin = "isAdmin"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bleTagMacID = try values.decodeIfPresent(String.self, forKey: .bleTagMacID)
        addedByUserId = try values.decodeIfPresent(Int.self, forKey: .addedByUserId)
        shortName = try values.decodeIfPresent(String.self, forKey: .shortName)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        markedAsLost = try values.decodeIfPresent(Bool.self, forKey: .markedAsLost)
        iconPath = try values.decodeIfPresent(String.self, forKey: .iconPath)
        iconId = try values.decodeIfPresent(Int.self, forKey: .iconId)
        recvTime = try values.decodeIfPresent(Int.self, forKey: .recvTime)
        locationStatus = try values.decodeIfPresent(Int.self, forKey: .locationStatus)
        bleTagId = try values.decodeIfPresent(Int.self, forKey: .bleTagId)
        addedDate = try values.decodeIfPresent(String.self, forKey: .addedDate)
        activationDate = try values.decodeIfPresent(String.self, forKey: .activationDate)
        sharedUserName = try values.decodeIfPresent(String.self, forKey: .sharedUserName)
        bleType = try values.decodeIfPresent(String.self, forKey: .bleType)
        relayLocStatus = try values.decodeIfPresent(String.self, forKey: .relayLocStatus)
        relayLockedByUser = try values.decodeIfPresent(String.self, forKey: .relayLockedByUser)
        relayLockedLocation_lat = try values.decodeIfPresent(String.self, forKey: .relayLockedLocation_lat)
        relayLockedLocation_lng = try values.decodeIfPresent(String.self, forKey: .relayLockedLocation_lng)
        isParked = try values.decodeIfPresent(Bool.self, forKey: .isParked)
        isAdmin = try values.decodeIfPresent(Int.self, forKey: .isAdmin)
    }

}
